//
// Name: Poojan Patel
// Student ID- 301228811
// Course: MAPD 714
// In first part UI was created for this application
// In second part, the methods are written for the buttons to perform basic arithmetic operations
// In third part, there are few buttons added in landscape view with methods for their functionality.
// Date modified: 10/23/2021

import UIKit


class ViewController: UIViewController {
    
    // Variable Declaration
    var operand1:String = ""
    var operand2:String = ""
    var curr_operator:String = ""
    var answer:String = ""
    var text:String = ""
    var current_form:String = "Deg"
    
    
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
            print("IFFFFFFFFFF")
        
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
            //operand1.append(text)
            print(operand1)
        }
        else{
            if (answer != ""){
                operand1 = ""
                operand1.append(answer)


            }
            else{
                operand1 = ""
                operand1.append(text)
            }
            
            print("ELSEEEEEE")
            AnswerLabel.text = "0"
            switch answer_text {
            case ".":
                if !operand2.contains(".")
                {
                    operand2.append(answer_text)
                }
            case "0":
                if operand2 != "0"
                {
                    operand2.append(answer_text)
                }
            default:
                operand2.append(answer_text)
                
            }
            AnswerLabel.text = operand2
            print(operand2, operand1)
            
        }
    }
    
// function for operator buttons
    @IBAction func OnOperatorClick(_ sender: UIButton) {
        
        var btn_text = sender.titleLabel!.text!
        print(curr_operator)
        
        // Removing previous operators used
        if (curr_operator != ""){
        
            print(curr_operator,operand1,operand2)
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
                operand2 = ""
                operand1 = ""
                operand1.append(answer)
                curr_operator = ""
                curr_operator.append(btn_text)
                
            }
        }
        else {
            curr_operator.append(btn_text)
    
        }
    }
    
    
    // Percentage button
    
    @IBAction func OnPercentageClick(_ sender: UIButton) {
        var output = percentage(a: operand1)
        AnswerLabel.text = output
        answer = ""
        answer = AnswerLabel.text!
        print(output)
    }
    
    // +/- Button functionality
    @IBAction func OnPiusMinusClick(_ sender: UIButton) {
        //print(AnswerLabel.text!.prefix(1))
        var output = negate(a:AnswerLabel.text!)
        AnswerLabel.text = output
        if answer != "" {
            answer = ""
            answer.append(AnswerLabel.text!)
        }
        
    }
    
    // Square function
    @IBAction func OnSquareClick(_ sender: UIButton) {
        var output = square(a:AnswerLabel.text!)
        AnswerLabel.text = output
    }
    
    
    // Pi button click
    @IBAction func OnPiClick(_ sender: UIButton) {
        print(Double.pi)
        print(sine(a:AnswerLabel.text!))
        AnswerLabel.text = ""
        answer = ""
        AnswerLabel.text = String(Double.pi)
        answer.append(AnswerLabel.text!)
    }
    
    // Trigonotmetric Functions
    @IBAction func OnTrigClick(_ sender: UIButton) {
        
        var btn_text = sender.titleLabel!.text!
        if (btn_text == "sin"){
            var output = sine(a:AnswerLabel.text!)
            AnswerLabel.text = output
        }
        
        else if (btn_text == "cos"){
            var output = cosine(a:AnswerLabel.text!)
            AnswerLabel.text = output
            
        }
        
        else if (btn_text == "tan"){
            var output = tangent(a:AnswerLabel.text!)
            AnswerLabel.text = output
            
        }
        answer = ""
        answer.append(AnswerLabel.text!)
        
    }
    
    
    // Backspace Button
    @IBAction func OnBackSpace(_ sender: UIButton) {
        
        var b_text = AnswerLabel.text
        // Used droplast function to drop last character
        b_text = String(b_text!.dropLast())
        AnswerLabel.text = b_text
        if (answer != ""){
            answer = ""
            answer.append(b_text!)
        }
        // If the last number from answer is removed then replace with 0
        if AnswerLabel.text == "" {
            AnswerLabel.text?.append("0")
        }    }
    
    
    // Clear Button
    @IBAction func ClearButton(_ sender: UIButton) {
        operand1 = ""
        operand2 = ""
        curr_operator = ""
        text = ""
        answer = ""
        AnswerLabel.text = "0"
    }
    
    // Equal Button
    @IBAction func OnEqualClick(_ sender: UIButton) {
        
        if (curr_operator != ""){
        
            print(curr_operator,operand1,operand2)
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
                operand2 = ""
                operand1 = ""
                operand1.append(answer)
                curr_operator = ""
                
            }
        }
    }
    
    // Functions to perform Mathematical operations
    func add(a:String, b:String) -> String{
        var result: Float = Float(a)! + Float(b)!
        var answer1 = String(format:"%.8f",result)
        return answer1
        
    }
    func subtract(a:String, b:String) -> String{
        var result: Float = Float(a)! - Float(b)!
        var answer1 = String(format:"%.8f",result)
        return answer1
        
    }

    func multiply(a:String, b:String) -> String{
        var result: Float = Float(a)! * Float(b)!
        var answer1 = String(format:"%.8f",result)
        return answer1
        
    }

    func divide(a:String, b:String) -> String{
        var result: Float = Float(a)! / Float(b)!
        var answer1 = String(format:"%.8f",result)
        return answer1
        
    }
    
    func negate(a:String) -> String{
        var result: Float = Float(a)! * -1
        var answer1 = String(result)
        return answer1
    }
    
    func percentage(a:String) -> String{
        var result: Float = Float(a)! / 100
        var answer = String(result)
        return answer
    }
    
    func square(a:String) -> String{
        var result: Float = Float(a)! * Float(a)!
        var answer = String(result)
        return answer
    }
    
    func sine(a:String) -> String{
        var result:Double = sin(Double(a)! * Double.pi/180)
        var answer = String(result)
        return answer
    }
    
    func cosine(a:String) -> String{
        var result:Double = cos(Double(a)! * Double.pi/180)
        var answer = String(result)
        return answer
    }
    
    func tangent(a:String) -> String{
        var result:Double = tan(Double(a)! * Double.pi/180)
        var answer = String(result)
        return answer
    }
}


    



    


