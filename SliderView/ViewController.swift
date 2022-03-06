//
//  ViewController.swift
//  SliderView
//
//  Created by Игорь Варакутин on 06.03.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var colourView: UIView!
    
    @IBOutlet var bSlider: UISlider! {
        didSet {
            bSlider.tintColor = UIColor.blue
        }
    }
    @IBOutlet var rSlider: UISlider! {
        didSet {
            rSlider.tintColor = UIColor.red
        }
    }
    @IBOutlet var gSlider: UISlider! {
        didSet {
            gSlider.tintColor = UIColor.green
        }
    }
    
    @IBOutlet var rLabel: UILabel!
    @IBOutlet var gLabel: UILabel!
    @IBOutlet var bLabel: UILabel!
    
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        rLabel.text = String(format: "%.2f",rSlider.value)
        gLabel.text = String(format: "%.2f",gSlider.value)
        bLabel.text = String(format: "%.2f",bSlider.value)
        
    }

    func changeColour() {
        colourView.backgroundColor = UIColor(displayP3Red: CGFloat(rSlider.value), green: CGFloat(gSlider.value), blue: CGFloat(bSlider.value), alpha: 1)
    }
    @IBAction func rgbSliderChanged() {
        changeColour()
    }
    @IBAction func numberSliderChanged() {
        rLabel.text = String(format: "%.2f",rSlider.value)
        gLabel.text = String(format: "%.2f",gSlider.value)
        bLabel.text = String(format: "%.2f",bSlider.value)
    }
    
}

