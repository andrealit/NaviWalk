# NaviWalk
NaviWalk is an app for users to view music while on a map view.

## Objective
An navigation app for pedestrians, allowing pedestrians to listen to music on their route.

## How to use the app
After the app is launched, a tab view with a live message and map view is shown. 
The user can press the map to select the pin and get information and photos.
The user can then switch to a live messaging service for updates on the area.

## Build and Install 
### Requirements
- Xcode 10.1
- iOS 12.1
- Swift 4.2

### Getting the Code
To download the code, you'll have to clone the repo. Then, to install Firebase frameworks, you'll need to use Cocoapods and execute a 'pod install' command for the PodFile to download all third-party frameworks.

`pod install`

### Running the app
After executing 'pod install', open the `NaviWalk.xcworkspace` file that has been generated with XCode. You will need an application ID and application key to use the Mapbox API.

## Resources
This app uses the following frameworks and APIs: 

### Third-Party Frameworks
| Framework | Description |
| --- | --- |
| Cocoapods | File dependency manager. |
| Firebase | Real time database for messaging. |

### APIS
| API | Description |
| --- | --- |
| Spotify | Provides music access. |
