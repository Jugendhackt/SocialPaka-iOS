//
//  ViewController.swift
//  Alpaka
//
//  Created by Felix Schlegel on 09.09.17.
//  Copyright © 2017 Felix Schlegel. All rights reserved.
//

import UIKit
import TesseractOCR

class ViewController: UIViewController, G8TesseractDelegate {

    @IBOutlet weak var textLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        if let tesseract = G8Tesseract(language: "eng"){
            
            tesseract.delegate = self
        
            tesseract.image = UIImage(named: "name")?.g8_blackAndWhite()
            tesseract.recognize()
            
            textLabel.text = tesseract.recognizedText
            
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    //When the recognize button was clicked
    @IBAction func recognizeImage(_ sender: Any) {
        
        
        
    }

}

