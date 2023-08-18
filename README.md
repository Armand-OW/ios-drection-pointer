# iOS Directional Pointer App

This is a simple iOS app built using SwiftUI that acts as a directional pointer to a specific location based on the user's phone orientation and current location.

## Getting Started

Follow the instructions below to clone and set up the project on your local machine.

### Prerequisites

- Xcode (minimum version Xcode 14)
- An iOS device or simulator running iOS 14 or later

### Clone the Repository

1. Open Terminal.

2. Change the current working directory to the location where you want to clone the project.

3. Run the following command to clone the repository:

   ```sh
   git clone https://github.com/Armand-OW/ios-directional-pointer.git

### Open the Project in Xcode

1. Open Xcode.

2. Click on "Open a project or file."

3. Navigate to the directory where you cloned the repository and select the **_ios-directional-pointer.xcodeproj_** file.

### Configure Permissions

1. Open the **Info.plist** file in the project navigator.

2. Add the following entries to the **Info.plist** file to request the necessary permissions:
* **NSLocationWhenInUseUsageDescription**: Provide a description of why you need location access.
* **NSMotionUsageDescription**: Provide a description of why you need motion access.

### Run the App
1. Connect your iOS device to your Mac or choose a simulator in Xcode.

2. Select the target device/simulator from the scheme dropdown in the Xcode toolbar.

3. Click the "Run" button (or press Cmd + R) to build and run the app on your selected device/simulator.

## Usage
* The app will display the calculated direction angle and a rotating arrow icon.
*The direction angle is calculated based on the user's phone orientation and the target location.
* The arrow icon will rotate to point in the direction of the target location.

## License
This project is licensed under the [MIT License](https://github.com/Armand-OW/ios-directional-pointer/blob/main/LICENSE.txt).

## Acknowledgements
This project is a simplified example and might require further enhancements for production use.


