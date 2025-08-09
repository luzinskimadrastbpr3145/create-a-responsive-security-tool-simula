import UIKit

// Simulation of a security tool with varying levels of threat detection
struct SecurityTool {
    let name: String
    let threatLevel: Int // 1-5, 1 being low, 5 being critical
    let responseTime: Double // in seconds

    func simulateResponse() -> String {
        switch threatLevel {
        case 1:
            return "Threat level: Low. Response: \(name) is monitoring..."
        case 2, 3:
            return "Threat level: Medium. Response: \(name) is analyzing..."
        case 4, 5:
            return "Threat level: Critical. Response: \(name) is responding urgently..."
        default:
            return "Unknown threat level"
        }
    }
}

// Simulator class to run the security tool
class SecurityToolSimulator {
    let tool: SecurityTool

    init(tool: SecurityTool) {
        self.tool = tool
    }

    func runSimulation() {
        print("Simulating \(tool.name)...")
        print(tool.simulateResponse())
        print("Response time: \(tool.responseTime) seconds")
        print("Simulation complete.")
    }
}

// Test case: Create a security tool and run a simulation
let tool = SecurityTool(name: "VK-6C Cyber Shield", threatLevel: 4, responseTime: 3.2)
let simulator = SecurityToolSimulator(tool: tool)
simulator.runSimulation()