//
//  ContentView.swift
//  Direction Pointer
//
//  Created by OW on 2023/08/18.
//

import SwiftUI
import CoreLocation
import CoreMotion

struct ContentView: View {
    @ObservedObject var locationManager = LocationManager()
    @ObservedObject var motionManager = MotionManager()

    var body: some View {
        VStack {
            Text("Direction to Target: \(calculateDirection())°")
                .padding()

            Image(systemName: "arrow.up.circle.fill")
                .resizable()
                .frame(width: 100, height: 100)
                .rotationEffect(.degrees(calculateDirection()))
                .animation(Animation.easeInOut(duration: 0.1), value: 1)
                .padding()

        }
    }

    private func calculateDirection() -> Double {
        guard let userLocation = locationManager.userLocation else {
            return 0.0
        }

        let userHeading = motionManager.deviceOrientation // in radians
        let targetHeading = userLocation.direction(to: locationManager.targetLocation)

        // Convert radians to degrees and adjust for the rotation direction
        let degrees = userHeading.radiansToDegrees + targetHeading.radiansToDegrees
        return degrees
    }
}

extension Double {
    var radiansToDegrees: Double { self * 180 / .pi }
    var degreesToRadians: Double { self * .pi / 180 }
}

extension CLLocation {
    func direction(to location: CLLocation) -> Double {
        let dx = location.coordinate.longitude - self.coordinate.longitude
        let dy = location.coordinate.latitude - self.coordinate.latitude
        let angle = atan2(dy, dx) // in radians
        return angle
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
