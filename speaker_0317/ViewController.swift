//
//  ViewController.swift
//  speaker_0317
//
//  Created by Caren on 2022/3/20.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    @IBOutlet weak var engSpeakerTextField: UITextField!
    
    
    @IBOutlet weak var zhtwSpeakerTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let tapGesture = UITapGestureRecognizer(target: view, action: #selector(UIView.endEditing))
         view.addGestureRecognizer(tapGesture)
    }

    @IBAction func speakerButton(_ sender: Any) {
        
        print("test")
        // Create an utterance.
        let utterance = AVSpeechUtterance(string: engSpeakerTextField.text!)

        // Configure the utterance.
        utterance.rate = 0.57
        utterance.pitchMultiplier = 0.8
        utterance.postUtteranceDelay = 0.2
        utterance.volume = 0.8

        // Retrieve the British English voice.
        let voice = AVSpeechSynthesisVoice(language: "en-GB")

        // Assign the voice to the utterance.
        utterance.voice = voice
        
        // Create a speech synthesizer.
        let synthesizer = AVSpeechSynthesizer()

        // Tell the synthesizer to speak the utterance.
        synthesizer.speak(utterance)
        
    }
    
    @IBAction func speaker_btn2(_ sender: Any) {
        
        // Create an utterance.
        let utterance = AVSpeechUtterance(string: zhtwSpeakerTextField.text!)

        // Configure the utterance.
//        utterance.rate = 0.57
//        utterance.pitchMultiplier = 0.8
//        utterance.postUtteranceDelay = 0.2
//        utterance.volume = 0.8

        // Retrieve the British English voice.
        let voice = AVSpeechSynthesisVoice(language: "zh-tw")

        // Assign the voice to the utterance.
        utterance.voice = voice
        // Create a speech synthesizer.
        let synthesizer = AVSpeechSynthesizer()

        // Tell the synthesizer to speak the utterance.
        synthesizer.speak(utterance)
    }
    
}


