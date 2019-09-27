//
//  ViewController.swift
//  CustomColour
//
//  Created by Vaibhav Mehta on 27/09/19.
//  Copyright © 2019 oz10. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var navBar: UINavigationBar!
    @IBOutlet weak var customColourView: UIView!
   
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    
    @IBOutlet weak var redSliderLabel: UILabel!
    @IBOutlet weak var greenSliderLabel: UILabel!
    @IBOutlet weak var blueSliderLabel: UILabel!

    var RedColour: Float = 0
    var GreenColour: Float = 0
    var BlueColour: Float = 0

    @IBOutlet weak var sliderLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        customColourView.isHidden = true
        
    }

    @IBAction func backgroundButton(_ sender: Any) {
        customColourView.isHidden = false
    }
    
    // SLIDER
    
    @IBAction func sliderRed(_ sender: Any) {
        ChangeColours()
    }
    
    @IBAction func sliderGreen(_ sender: Any) {
        ChangeColours()
    }
    
    @IBAction func sliderBlue(_ sender: Any) {
        ChangeColours()
    }
    
    func ChangeDisplayLabelColour(){
        
        sliderLabel.backgroundColor = UIColor(displayP3Red: CGFloat(RedColour), green: CGFloat(GreenColour), blue: CGFloat(BlueColour), alpha: 1.0)
        
        changeVariableNumbers()
    }
    
    func ChangeColours(){
        
        RedColour = redSlider.value
        GreenColour = greenSlider.value
        BlueColour = blueSlider.value
        ChangeDisplayLabelColour()
    }
    
    func changeVariableNumbers(){
        
        let RoundedRed = String(format: "%0.0f", RedColour * 255)
        let RoundedGreen = String(format: "%0.0f", GreenColour * 255)
        let RoundedBlue = String(format: "%0.0f", BlueColour * 255)
        
        redSliderLabel.text = "Red: \(RoundedRed)"
        greenSliderLabel.text = "Green: \(RoundedGreen)"
        blueSliderLabel.text = "Blue: \(RoundedBlue)"
    }
    
    @IBAction func resetColour(_ sender: Any) {
        
        ResettingSlider()
    }
    
    func ResettingSlider(){
        
        redSlider.value = 0.5
        greenSlider.value = 0.5
        blueSlider.value = 0.5
        
        redSliderLabel.text = String("Red: 0")
        greenSliderLabel.text = String("Green: 0")
        blueSliderLabel.text = String("Blue: 0")
    }
    
    @IBAction func doneColour(_ sender: Any) {
        
        self.view.backgroundColor = UIColor(displayP3Red: CGFloat(RedColour), green: CGFloat(GreenColour), blue: CGFloat(BlueColour), alpha: 1.0)
        
        customColourView.isHidden = true
    }
}

