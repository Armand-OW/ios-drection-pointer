//
//  MotionManager.swift
//  Direction Pointer
//
//  Created by OW on 2023/08/18.
//

import Foundation
import CoreMotion

class MotionManager: ObservableObject {
    private var motionManager = CMMotionManager()
    @Published var deviceOrientation: Double = 0.0
    
    init() {
        self.motionManager.deviceMotionUpdateInterval = 0.1
        self.motionManager.startDeviceMotionUpdates(to: .main) { data, error in
            if let attitude = data?.attitude {
                self.deviceOrientation = attitude.yaw // Get the yaw value for orientation
            }
        }
    }
}
