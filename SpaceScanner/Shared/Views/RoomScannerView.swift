import SwiftUI
import RoomPlan

struct RoomScannerView: View {
    @StateObject private var viewModel = RoomScannerViewModel()
    
    var body: some View {
        ZStack(alignment: .bottom) {
            // The AR Camera Feed
            RoomCaptureViewRepresentable()
                .edgesIgnoringSafeArea(.all)
            
            // UI Overlay
            VStack {
                HStack {
                    Spacer()
                    // HUD showing live metrics
                    VStack(alignment: .trailing) {
                        if viewModel.ADAAisleViolationsCount > 0 {
                            Text("⚠️ Aisle < 36\"")
                                .bold()
                                .padding(8)
                                .background(Color.red.opacity(0.8))
                                .cornerRadius(8)
                                .foregroundColor(.white)
                        }
                    }
                    .padding()
                }
                Spacer()
                
                // Controls
                Button(action: {
                    if viewModel.isScanning {
                        viewModel.stopScan()
                    } else {
                        viewModel.startScan()
                    }
                }) {
                    Text(viewModel.isScanning ? "Stop Scanning" : "Start Scanning")
                        .font(.title2)
                        .bold()
                        .foregroundColor(.white)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(viewModel.isScanning ? Color.red : Color.blue)
                        .cornerRadius(12)
                        .padding()
                }
            }
        }
        .onDisappear {
            viewModel.stopScan()
        }
    }
}

// Bridges UIKit RoomCaptureView to SwiftUI
struct RoomCaptureViewRepresentable: UIViewRepresentable {
    func makeUIView(context: Context) -> RoomCaptureView {
        let view = RoomCaptureView(frame: .zero)
        
        // Attach the shared manager's session to the view
        if let session = RoomPlanManager.shared.captureSession {
            view.captureSession = session
        }
        
        return view
    }
    
    func updateUIView(_ uiView: RoomCaptureView, context: Context) {}
}

#Preview {
    RoomScannerView()
}
