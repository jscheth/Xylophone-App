# Xylophone App

## Overview
This is a simple iOS app created for learning purposes. It demonstrates the use of functions, **AVFoundation**, and UIButton interactions to play sounds based on button titles. The app utilizes **Auto Layout** constraints for UI layout, ensuring that buttons are dynamically positioned and respond to user input.

## Features
- Uses **AVFoundation** to play sound files when a button is pressed.
- Buttons trigger different sound notes (e.g., "C", "D", "E", etc.).
- Buttons' alpha value changes on press to provide visual feedback.
- UI layout is based on **Auto Layout** constraints.

## Technologies Used
- **Swift**
- **AVFoundation**
- **Auto Layout (via constraints)**

## How It Works
1. **UIButton Interaction**: Each button has a title corresponding to a sound (e.g., "C", "D", "E").
2. **Sound Playback**: When a button is pressed, the app retrieves the title of the button and plays the corresponding sound file using **AVAudioPlayer**.
3. **UI Feedback**: When a button is pressed, its alpha value is temporarily reduced to 0.5 and then restored to 1.0 for visual feedback.
4. **Auto Layout**: The app uses **Auto Layout** constraints to position the buttons dynamically on the screen, ensuring responsiveness to different screen sizes.

## Code Highlights

```swift
import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var player: AVAudioPlayer!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Additional setup after loading the view.
    }

    @IBAction func keyPressed(_ sender: UIButton) {
        // Get button title and play corresponding sound
        if let title = sender.configuration?.title {
            print("Button title: \(title)")
            playSound(soundTitle: title)
            
            // Visual feedback: Change button alpha
            sender.alpha = 0.5
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) {
                sender.alpha = 1.0
            }
        } else {
            print("No title found!")
        }
    }

    func playSound(soundTitle: String) {
        if let url = Bundle.main.url(forResource: soundTitle, withExtension: "wav") {
            do {
                // Create audio player and play sound
                player = try AVAudioPlayer(contentsOf: url)
                player.play()
            } catch {
                print("Error playing sound: \(error.localizedDescription)")
            }
        } else {
            print("Sound file not found: \(soundTitle).wav")
        }
    }
}
```

## Setup Instructions
1. Clone the repository:
   ```sh
   git clone https://github.com/jscheth/Xylophone-App.git
   ```
2. Open `Xylophone-App.xcodeproj` in Xcode.
3. Ensure you have the correct `.wav` sound files in your project’s **Resources** folder.
4. Run the app on the simulator or a physical device.

## GitHub Repository
You can find the project repository here:  
[**Xylophone-App GitHub Repository**](https://github.com/jscheth/Xylophone-App)

## Notes
- Each button title corresponds to a sound file (e.g., "C", "D", "E", etc.).
- The **Auto Layout** ensures that the buttons will be dynamically arranged based on the screen size.
- This app is designed for **learning purposes only** and is not intended for commercial use.

## Screen Shots
![Simulator Screenshot - iPhone 16 Pro Max - 2025-03-25 at 13 48 57](https://github.com/user-attachments/assets/b32a24ed-7d10-4ed5-a801-bcfd6fa8282d)
![Simulator Screenshot - iPhone 16 Pro Max - 2025-03-25 at 13 49 01](https://github.com/user-attachments/assets/74582637-38f7-4559-bd46-91b53bd36e9a)
![Simulator Screenshot - iPhone 16 Pro Max - 2025-03-25 at 13 50 22](https://github.com/user-attachments/assets/b3041c53-5069-4358-8177-55bbf41aa606)



## License
This project is for **learning purposes only**.
