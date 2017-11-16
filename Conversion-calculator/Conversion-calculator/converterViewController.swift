//
//  converterViewController.swift
//  Conversion-calculator
//
//  Created by Matthew McCarthy on 11/9/17.
//  Copyright © 2017 tech innovator. All rights reserved.
//

import UIKit

class converterViewController: UIViewController {
    @IBOutlet weak var outputDisplay : UITextField!
    @IBOutlet weak var inputDisplay: UITextField!
    
    let converters = [
                      Converter(label: "fahrenheit to celcius", inputType:   "°F", outputType: "°C"),
                      Converter(label: "celcius to fahrenheit", inputType: "°C", outputType: "°F"),
                      Converter(label: "miles to kilometers", inputType: "mi", outputType: "km"),
                      Converter(label: "kilometers to miles", inputType: "km", outputType: "mi")]
    

    override func viewDidLoad() {
        super.viewDidLoad()
        let startIndex = 0
        outputDisplay?.text = converters[startIndex].outputType
        inputDisplay?.text = converters[startIndex].inputType
    }
       
    
   override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func selectConverter(_ sender: Any) {
        
        let alert = UIAlertController(title: nil, message: "Choose A Converter:", preferredStyle:
            UIAlertControllerStyle.actionSheet)
    
        for converter in converters{
          alert.addAction(UIAlertAction(title: converter.label, style: UIAlertActionStyle.default, handler: { (alertAction) -> Void in
        
                self.inputDisplay.text = converter.inputType
                self.outputDisplay.text = converter.outputType
        
                }))
        
                            }
        
            self.present(alert, animated: true, completion: nil)
        
    }
   
}
