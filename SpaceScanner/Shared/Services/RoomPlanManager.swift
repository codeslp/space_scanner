import RoomPlan
import os

/// Enapsulates the RoomCaptureSession logic, adhering to MVVM
class RoomPlanManager: ObservableObject, RoomCaptureSessionDelegate {
    static let shared = RoomPlanManager()
    
    // The active AR session targeting RoomPlan
    var captureSession: RoomCaptureSession?
    
    @Published var isScanning = false
    @Published var latestRoom: CapturedRoom?
    
    private let logger = Logger(subsystem: "com.spaceScanner", category: "RoomPlanManager")
    
    init() {
        setupSession()
    }
    
    func setupSession() {
        captureSession = RoomCaptureSession()
        captureSession?.delegate = self
    }
    
    func startSession() {
        guard let session = captureSession else { return }
        
        let configuration = RoomCaptureSession.Configuration()
        session.run(configuration: configuration)
        isScanning = true
        logger.info("RoomCaptureSession started")
    }
    
    func stopSession() {
        captureSession?.stop()
        isScanning = false
        logger.info("RoomCaptureSession stopped")
    }
    
    // MARK: - RoomCaptureSessionDelegate
    
    func captureSession(_ session: RoomCaptureSession, didUpdate room: CapturedRoom) {
        DispatchQueue.main.async {
            self.latestRoom = room
            self.logger.debug("Room updated. Walls: \(room.walls.count), Objects: \(room.objects.count)")
        }
    }
    
    func captureSession(_ session: RoomCaptureSession, didEndWith data: CapturedRoomData, error: (any Error)?) {
        if let error = error {
            logger.error("Capture session ended with error: \(error.localizedDescription)")
            return
        }
        
        // Asynchronously process the detailed USDZ model if needed
        Task {
            do {
                let finalRoom = try await RoomBuilder(options: [.beautifyObjects]).capturedRoom(from: data)
                DispatchQueue.main.async {
                    self.latestRoom = finalRoom
                    self.logger.info("Final beautiful room generated.")
                }
            } catch {
                logger.error("Failed to build final room: \(error.localizedDescription)")
            }
        }
    }
}
