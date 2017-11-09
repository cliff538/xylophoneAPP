//
//  ViewController.swift
//  Xylophone
//
//  Created by Angela Yu on 27/01/2016.
//  Copyright © 2016 London App Brewery. All rights reserved.
//

import UIKit
import AVFoundation


class ViewController: UIViewController, AVAudioPlayerDelegate {
    
	// MARK: - Properties
	var audioPlayer : AVAudioPlayer!
	let soundArray = ["note1", "note2", "note3", "note4", "note5", "note6", "note7"]
	var selectedSoundFileName = ""
	
	
	// MARK: - View Did Load
    override func viewDidLoad() {
        super.viewDidLoad()
    }


 // MARK: - Interactions
	@IBAction func notePressed(_ sender: UIButton) {
		
		selectedSoundFileName = soundArray[sender.tag - 1]
		
		playSound()
	}
	
	
	// MARK: - Functions
	
	//all 7 keys are under one @IBAction.Differentiated by using Tags, 1-7.
	//if not using tags you'd have to make 7 diff. @IBAction's.
	func playSound() {
		//testing: print tag numbers when buttons pressed.
		//print(sender.tag)
		
		let soundURL = Bundle.main.url(forResource: selectedSoundFileName, withExtension: "wav")
		
		//"do-catch-try" error handling.
		do {
			audioPlayer = try AVAudioPlayer(contentsOf: soundURL!)
		}
		catch {
			print(error)
		}
		
		audioPlayer.play()
	}

}

