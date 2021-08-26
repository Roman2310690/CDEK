//
//  ResultViewController.swift
//  CDEK
//
//  Created by Roma on 8/26/21.
//

import UIKit

class ResultViewController: UIViewController {
    
    var result: String?

    @IBOutlet weak var resultLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        resultLabel.text = result! + String(" руб.")
    }
    
    @IBAction func recalculate(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
    
}
