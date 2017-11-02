//
//  ViewController.swift
//  Xylophone
//
//  Created by Angela Yu on 27/01/2016.
//  Copyright © 2016 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController{
    

    override func viewDidLoad() {
        super.viewDidLoad()
    }



	//all 7 keys are under one @IBAction.Differentiated by using Tags, 1-7.
	@IBAction func notePressed(_ sender: UIButton) {
		
		//test tag numbers when buttons pressed. 
      print(sender.tag)
        
    }
    
  

}

