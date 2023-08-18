//
//  ViewController.swift
//  UIComponents
//
//  Created by Khasan Magomaev on 18.08.2023.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet var viewForColorChanging: UIView!
    
    @IBOutlet var redLabel: UILabel!
    @IBOutlet var greenLabel: UILabel!
    @IBOutlet var blueLabel: UILabel!
    
    @IBOutlet var sliderCounterRed: UILabel!
    @IBOutlet var sliderCounterGreen: UILabel!
    @IBOutlet var sliderCounterBlue: UILabel!
    
    

    @IBOutlet var redSlider: UISlider!
    @IBOutlet var greenSlider: UISlider!
    @IBOutlet var blueSlider: UISlider!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        sliderCounterRed.textAlignment = .center
        sliderCounterRed.text = ""
        
        sliderCounterGreen.textAlignment = .center
        sliderCounterGreen.text = ""
        
        sliderCounterBlue.textAlignment = .center
        sliderCounterBlue.text = ""
        
        
        redSlider.value = 1
        redSlider.minimumTrackTintColor = .red
        redSlider.maximumValue = 100
        redSlider.minimumValue = 1
        
        greenSlider.value = 1
        greenSlider.minimumTrackTintColor = .green
        greenSlider.maximumValue = 100
        greenSlider.minimumValue = 1
        
        blueSlider.value = 1
        blueSlider.minimumTrackTintColor = .blue
        blueSlider.maximumValue = 100
        blueSlider.minimumValue = 1
        
        

    }
    
    @IBAction func redSliderAction(_ sender: Any) {
        sliderCounterRed.text = String(Int(redSlider.value))
        let redColor = CGFloat(redSlider.value / 100.0)
        let greenColor = CGFloat(greenSlider.value / 100.0)
        let blueColor = CGFloat(blueSlider.value / 100.0)
        
        let color = UIColor(red: redColor, green: greenColor, blue: blueColor, alpha: 1.0)
        viewForColorChanging.backgroundColor = color
    }
    
    @IBAction func greenSliderAction(_ sender: Any) {
        sliderCounterGreen.text = String(Int(greenSlider.value))
        let redColor = CGFloat(redSlider.value / 100.0)
        let greenColor = CGFloat(greenSlider.value / 100.0)
        let blueColor = CGFloat(blueSlider.value / 100.0)
        
        let color = UIColor(red: redColor, green: greenColor, blue: blueColor, alpha: 1.0)
        viewForColorChanging.backgroundColor = color
    }
    
    @IBAction func blueSliderAction(_ sender: Any) {
        sliderCounterBlue.text = String(Int(blueSlider.value))
        let redColor = CGFloat(redSlider.value / 100.0)
        let greenColor = CGFloat(greenSlider.value / 100.0)
        let blueColor = CGFloat(blueSlider.value / 100.0)
        
        let color = UIColor(red: redColor, green: greenColor, blue: blueColor, alpha: 1.0)
        viewForColorChanging.backgroundColor = color
    }
    
}

