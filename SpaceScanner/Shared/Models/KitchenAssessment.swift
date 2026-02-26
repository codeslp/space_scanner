import Foundation
import RoomPlan

struct KitchenAssessment: Identifiable {
    let id = UUID()
    let date: Date
    let capturedRoom: CapturedRoom? // From RoomPlan
    var detectedLabels: [String] = [] // From OCR
    var missingEquipmentList: [String] = [] // From CoreML Object Detection
    var aisleWidthViolations: [String] = [] // Spatial Math
}

struct ComplianceRule {
    let codeSection: String
    let description: String
    let minimumValue: Double? // e.g. 36.0 for inches
    let maximumValue: Double? // e.g. 34.0 for inches
}

// Basic rules from Phase 1 research
struct ComplianceRulebook {
    static let rules = [
        ComplianceRule(codeSection: "ADA 403.5.1", description: "Minimum Aisle Width", minimumValue: 36.0, maximumValue: nil),
        ComplianceRule(codeSection: "ADA 904.4.1", description: "Maximum Service Counter Height", minimumValue: nil, maximumValue: 34.0)
    ]
}
