//
//  ViewController.swift
//  CDEK
//
//  Created by Roma on 8/25/21.
//

import UIKit

class ViewController: UIViewController {
    
    var cdekValue = "0.0"

    @IBOutlet weak var weghtSlider: UISlider!
    @IBOutlet weak var weightLabel: UILabel!
    @IBAction func weightValue(_ sender: UISlider) {
        weightLabel.text = String(format: "%.1f",  sender.value) + String(" см")
    }
    @IBOutlet weak var hightSlider: UISlider!
    @IBOutlet weak var hightLabel: UILabel!
    @IBAction func hightValue(_ sender: UISlider) {
        hightLabel.text = String(format: "%.1f", sender.value) + String(" см")
    }
    override func viewDidLoad() {
        super.viewDidLoad()
    }


    @IBAction func result(_ sender: UIButton) {
        let height = hightSlider.value
        let weight = weghtSlider.value
        let cdek = height * weight
        cdekValue = String(format: "%.1f", cdek)
        
        self.performSegue(withIdentifier: "goToResult", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue .identifier == "goToResult" {
            let destinationView = segue.destination as! ResultViewController
            destinationView.result = cdekValue
        }
    }
    
}

