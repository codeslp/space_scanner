import SwiftUI

struct ScannerHomeView: View {
    @State private var isShowingScanner = false

    var body: some View {
        NavigationStack {
            VStack(spacing: 40) {
                Image(systemName: "camera.viewfinder")
                    .font(.system(size: 80))
                    .foregroundColor(.blue)

                Text("Space Scanner")
                    .font(.largeTitle)
                    .fontWeight(.bold)

                Text("Analyze kitchen layout and compliance via LiDAR and ML.")
                    .multilineTextAlignment(.center)
                    .foregroundColor(.secondary)
                    .padding(.horizontal)

                Button(action: {
                    isShowingScanner = true
                }) {
                    Text("Start Room Scan")
                        .font(.headline)
                        .foregroundColor(.white)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color.blue)
                        .cornerRadius(12)
                        .padding(.horizontal, 40)
                }
            }
            .navigationDestination(isPresented: $isShowingScanner) {
                RoomScannerView()
            }
        }
    }
}

#Preview {
    ScannerHomeView()
}
