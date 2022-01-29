//
//  ViewController.swift
//  HomeWork2Modeul2
//
//  Created by Илья Раков on 23.01.2022.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var colorCheningScreenView: UIView!
    
    @IBOutlet weak var redPlateOutletSlider: UISlider!
    @IBOutlet weak var greenPlateOutletSlider: UISlider!
    @IBOutlet weak var bluePlateOutletSlider: UISlider!
    
    
    @IBOutlet weak var redNumbersLabel: UILabel!
    @IBOutlet weak var greenNumbersLabel: UILabel!
    @IBOutlet weak var blueNumbersLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        colorCheningScreenView.layer.cornerRadius = 20
        
        colorCheningScreenView.backgroundColor = UIColor(
            red: CGFloat(redPlateOutletSlider.value),
            green: CGFloat(greenPlateOutletSlider.value),
            blue: CGFloat(bluePlateOutletSlider.value),
            alpha: 1
        )
        
        redNumbersLabel.text = String(format: "%.2f",
            redPlateOutletSlider.value)
        greenNumbersLabel.text = String(format: "%.2f", greenPlateOutletSlider.value)
        blueNumbersLabel.text = String(format: "%.2f", bluePlateOutletSlider.value)
        
        
        redNumbersLabel.text = String(redPlateOutletSlider.value)
        greenNumbersLabel.text = String(greenPlateOutletSlider.value)
        blueNumbersLabel.text = String(bluePlateOutletSlider.value)
        
        
        
    }
    
    @IBAction func rgbSlider(_ sender: UISlider) {
        setColor()
    
        
        redNumbersLabel.text = String(format: "%.2f",
            redPlateOutletSlider.value)
        greenNumbersLabel.text = String(format: "%.2f", greenPlateOutletSlider.value)
        blueNumbersLabel.text = String(format: "%.2f", bluePlateOutletSlider.value)
        
    }
    
    private func setColor (){
        colorCheningScreenView.backgroundColor = UIColor(
            red: CGFloat(redPlateOutletSlider.value),
            green: CGFloat(greenPlateOutletSlider.value),
            blue: CGFloat(bluePlateOutletSlider.value),
            alpha: 1
            )
    }
    
    private func string(from slider: UISlider) -> String{
        String(format: "%.2f", slider.value)
}

}
