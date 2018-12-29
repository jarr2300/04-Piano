//
//  ViewController.swift
//  04-Piano
//
//  Created by Macabuku on 29/12/18.
//  Copyright © 2018 Macabuku. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var audioPlayer : AVAudioPlayer!
    
    let soundArray = ["c1","c1s","d1","d1s","e1","f1","f1s","g1","g1s","a1","a1s","b1","c2"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


    @IBAction func playSound(_ sender: UIButton) {
        let idKey = sender.tag
        let filename = soundArray[idKey-1]
        print("Hemos pusaldo la tecla \(filename)")
        
        if let soundURL = Bundle.main.url(forResource: "\(filename)", withExtension: "mp3"){
            print(soundURL)
            do {
                audioPlayer = try AVAudioPlayer(contentsOf: soundURL)
            } catch {
                print(error)
            }
            audioPlayer.play()
        }
        
    }
    
    

}

