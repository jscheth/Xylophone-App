//
//  ViewController.swift
//  Xylophone-App
//
//  Created by Jonathan Cheth on 3/25/25.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var player: AVAudioPlayer!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func keyPressed(_ sender: UIButton) {
        if let title = sender.configuration?.title {
            print("Button title: \(title)")
        } else {
            print("No title found!")
        }
//        playSound(soundTitle: sender.currentTitle!)
//        sender.alpha = 0.5
//        DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) {
//            sender.alpha = 1.0
//        }
    }
    
    
    func playSound(soundTitle: String) {
        let url = Bundle.main.url(forResource: soundTitle, withExtension: "wav")
        player = try! AVAudioPlayer(contentsOf: url!)
        player.play()
                
    }


}

