import Foundation
import Vision
import ARKit
import os

/// Handles sending CVPixelBuffers from the ARKit camera feed to the Vision framework
class VisionProcessingService: ObservableObject {
    @Published var detectedTexts: [String] = []
    
    private let logger = Logger(subsystem: "com.spaceScanner", category: "Vision")
    private let visionQueue = DispatchQueue(label: "com.spaceScanner.visionQueue", qos: .userInitiated)
    
    // To prevent frame bottlenecking
    private var isProcessing = false
    
    /// Processes a single frame for text (e.g. Health Inspection score)
    func processFrameForText(pixelBuffer: CVPixelBuffer) {
        guard !isProcessing else { return }
        isProcessing = true
        
        let requestHandler = VNImageRequestHandler(cvPixelBuffer: pixelBuffer, orientation: .up, options: [:])
        let textRequest = VNRecognizeTextRequest { [weak self] request, error in
            defer { self?.isProcessing = false }
            
            if let error = error {
                self?.logger.error("Text recognition error: \(error.localizedDescription)")
                return
            }
            
            guard let observations = request.results as? [VNRecognizedTextObservation] else { return }
            
            // Extract top candidates
            let recognizedStrings = observations.compactMap { observation in
                observation.topCandidates(1).first?.string
            }
            
            DispatchQueue.main.async {
                self?.detectedTexts = recognizedStrings
                if !recognizedStrings.isEmpty {
                    self?.logger.debug("Detected text: \(recognizedStrings)")
                }
            }
        }
        
        textRequest.recognitionLevel = .accurate
        
        visionQueue.async {
            do {
                try requestHandler.perform([textRequest])
            } catch {
                self.logger.error("Failed to perform text request: \(error.localizedDescription)")
                self.isProcessing = false
            }
        }
    }
}
