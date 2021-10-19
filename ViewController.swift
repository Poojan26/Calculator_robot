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
    var text:String = ""
    
    // Answer Label outlet
    @IBOutlet weak var AnswerLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    // Actions
    
    // Method for digits
    @IBAction func OnNumbersClick(_ sender: UIButton) {
        var answer_text = sender.titleLabel!.text!
        
        // If condition to check if operator is present
        if(curr_operator == "" && answer == ""){
        
            switch answer_text {
            case ".":
                if !text.contains(".")
                {
                    text.append(answer_text)
                }
            case "0":
                if text != "0"
                {
                    text.append(answer_text)
                }
            default:
                text.append(answer_text)
                
            }
            AnswerLabel.text = text
        }
        else{
            if (answer == ""){
                operand1.append(text)
                
                
            }
            else{
                operand1 = ""
                operand1.append(answer)
                operand2 = ""
            }
            
            text = ""
            AnswerLabel.text = "0"
            switch answer_text {
            case ".":
                if !text.contains(".")
                {
                    text.append(answer_text)
                }
            case "0":
                if text != "0"
                {
                    text.append(answer_text)
                }
            default:
                text.append(answer_text)
                
            }
            AnswerLabel.text = text
            operand2.append(text)
        }
    }
    
// function for opererator buttons
    @IBAction func OnOperatorClick(_ sender: UIButton) {
        
        var btn_text = sender.titleLabel!.text!
        
        // Removing previous operators used
        if (curr_operator != ""){
        
            //print(curr_operator,operand1,operand2)
            if (operand1 != "" && operand2 != "") {
                if (curr_operator == "+"){
                    var output = add(a:operand1,b:operand2)
                    AnswerLabel.text = output
                }
                else if (curr_operator == "-"){
                    var output = subtract(a:operand1,b:operand2)
                    AnswerLabel.text = output
                }
                else if (curr_operator == "X"){
                    var output = multiply(a:operand1,b:operand2)
                    AnswerLabel.text = output
                }
                else if (curr_operator == "/"){
                    var output = divide(a:operand1,b:operand2)
                    AnswerLabel.text = output
                }
                
                answer = ""
                answer.append(AnswerLabel.text!)
                curr_operator = ""
            }
        }
        else {
            curr_operator.append(btn_text)
    
        }
    }
    
    
    // Clear Button
    
    @IBAction func ClearButton(_ sender: UIButton) {
        
    }
    // Functions to perform Mathematical operations
    func add(a:String, b:String) -> String{
        var result: Float = Float(a)! + Float(b)!
        var answer1 = String(result)
        return answer1
        
    }
    func subtract(a:String, b:String) -> String{
        var result: Float = Float(a)! - Float(b)!
        var answer1 = String(result)
        return answer1
        
    }

    func multiply(a:String, b:String) -> String{
        var result: Float = Float(a)! * Float(b)!
        var answer1 = String(result)
        return answer1
        
    }

    func divide(a:String, b:String) -> String{
        var result: Float = Float(a)! / Float(b)!
        var answer1 = String(result)
        return answer1
        
    }

}

    



    


