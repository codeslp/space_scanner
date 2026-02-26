import SwiftUI
import RoomPlan

class RoomScannerViewModel: ObservableObject {
    @Published var isScanning: Bool = false
    @Published var room: CapturedRoom?
    
    private let manager = RoomPlanManager.shared
    
    init() {
        manager.setupSession()
    }
    
    func startScan() {
        manager.startSession()
        isScanning = true
    }
    
    func stopScan() {
        manager.stopSession()
        isScanning = false
        // The manager will asynchronously provide the final room via `latestRoom`
    }
    
    // Derived properties for UI compliance feedback
    var ADAAisleViolationsCount: Int {
        // Mock logic for Phase 1: Real logic will iterate over room.walls / room.objects
        // to find distance < ComplianceRulebook.rules[0].minimumValue
        return room?.objects.count ?? 0 > 5 ? 1 : 0 
    }
}
