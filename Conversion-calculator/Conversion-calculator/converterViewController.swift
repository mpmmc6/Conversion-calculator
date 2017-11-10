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
    
    var converters = [
                      Converter(label: "fahrenheit to celcius", inputType:   "°F", outputType: "°C"),
                      Converter(label: "celcius to fahrenheit", inputType: "°C", outputType: "°F"),
                      Converter(label: "miles to kilometers", inputType: "mi", outputType: "km"),
                      Converter(label: "kilometers to miles", inputType: "km", outputType: "mi")]
    
    //var converters = [Converter]()
    
//    @IBAction func butConvert(_ sender: Any) {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        /*var converters = [Converter(label: "fahrenheit to celcius", inputType: "°F", outputType: "°C"),
                          Converter(label: "celcius to fahrenheit", inputType: "°C", outputType: "°F"),
                          Converter(label: "miles to kilometers", inputType: "mi", outputType: "km"),
                          Converter(label: "kilometers to miles", inputType: "km", outputType: "mi")]
     
 */
//        for element in converters {
//            print(element)
//        }
        outputDisplay?.text = converters[0].outputType
        inputDisplay?.text = converters[0].inputType
    }
       
    
   
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func butConvert(_ sender: UIButton) {
        let alert = UIAlertController(title: "Choose converter", message: nil, preferredStyle: UIAlertControllerStyle.actionSheet)
        
        alert.addAction(UIAlertAction(title: "Farenheit to celcius", style: UIAlertActionStyle.default, handler: {
            (alertAction) -> Void in
            self.inputDisplay.text = self.converters[0].inputType
            self.outputDisplay.text = self.converters[0].outputType
            
        }))
        
        alert.addAction(UIAlertAction(title: "Celcius to Farenheit", style: UIAlertActionStyle.default, handler: {
            (alertAction) -> Void in
            self.inputDisplay.text = self.converters[1].inputType
            self.outputDisplay.text = self.converters[1].outputType
            
        }))
    }
    }
    /*
        let alert = UIAlertController(title: "Choose converter", message: nil, preferredStyle: UIAlertControllerStyle.actionSheet)

        alert.addAction(UIAlertAction(title: "Farenheit to celcius", style: UIAlertActionStyle.default, handler: {
            (alertAction) -> Void in
            self.inputDisplay?.text = self.converters[0].inputType
            self.outputDisplay?.text = self.converters[0].outputType

        }))
    
        alert.addAction(UIAlertAction(title: "Celcius to Farenheit", style: UIAlertActionStyle.default, handler: {
            (alertAction) -> Void in
            self.inputDisplay?.text = self.converters[1].inputType
            self.outputDisplay?.text = self.converters[1].outputType

        }))
    }
    /*
        alert.addAction(UIAlertAction(title: "Miles to kilometers", style: UIAlertActionStyle.default, handler: {
            (alertAction) -> Void in
            self.inputDisplay.text = self.converters[2].inputType
            self.outputDisplay.text = self.converters[2].outputType

        }))

        alert.addAction(UIAlertAction(title: "Kilometers to miles", style: UIAlertActionStyle.default, handler: {
            (alertAction) -> Void in
            self.inputDisplay.text =  self.converters[3].inputType
            self.outputDisplay.text = self.converters[3].outputType

        })) */
        self.present(alert, animated: true, completion: nil)
    }
*/
    
    // MARK: - Navigation
/*
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */


