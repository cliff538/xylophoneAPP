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
    
	var audioPlayer : AVAudioPlayer!
	
	// MARK: - View Did Load
    override func viewDidLoad() {
        super.viewDidLoad()
    }



	// MARK: - Functions
	
	//all 7 keys are under one @IBAction.Differentiated by using Tags, 1-7.
	//if not using tags you'd have to make 7 diff. @IBAction's.
	@IBAction func notePressed(_ sender: UIButton) {
		
		//test tag numbers when buttons pressed. 
      //print(sender.tag)
		
		let soundURL = Bundle.main.url(forResource: "note1", withExtension: "wav")
		
		do {
			audioPlayer = try AVAudioPlayer(contentsOf: soundURL!)
		}
		catch {
			print(error)
		}
		
		audioPlayer.play()

        
    }
	
	

}

