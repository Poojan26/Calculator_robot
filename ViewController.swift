//
// Name: Poojan Patel
// Student ID- 301228811
// Course: MAPD 714
// In first part UI was created for this application
// Now in second part, the methods are written for the buttons to perform basic arithmetic operations
// Date modified: 10/3/2021

import UIKit

class ViewController: UIViewController {
    
    // Variable Declaration
    var operand1:String = ""
    var operand2:String = ""
    var curr_operator:String = ""
    var answer:String = ""
    
    // Answer Label outlet
    @IBOutlet weak var AnswerLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    // Actions
    
    // Method for digits
    @IBAction func OnNumbersClick(_ sender: UIButton) {
        
    }
    

}

