
import UIKit

class ViewController: UIViewController {

            @IBOutlet weak var btnAC: UIButton!
    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var buttonzero: UIButton!
    @IBOutlet weak var button: UIButton!
    @IBOutlet weak var buttons: UIStackView!
    
    @IBOutlet weak var buttonChangeResultLabel: UILabel!
    
    var numberOne = ""
    var numberTwo = ""
    var operand = ""
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        // Do any additional setup after loading the view.        }
        
        
        
        @IBAction func inputNumber(_ sender: UIButton) {
            if operand.isEmpty{
                numberOne = numberOne +
                (sender.titleLabel?.text)!
                resultLabel.text = numberOne}
            else
            {
                numberTwo = numberTwo +
                (sender.titleLabel?.text)!
                resultLabel.text = numberTwo
            }
        
            
            func clearAction(_ sender: UIButton) {
            numberOne = ""
            numberTwo = ""
            operand = ""
            resultLabel.text = "0"
        }
            
            func result(_ sender: UIButton) {
            var result = 0.0
            
            switch operand{
            case "/":
                result = Double(numberOne)! /
                Double(numberTwo)!
            case "+":
                result = Double(numberOne)! +
                Double(numberTwo)!
            case "-":
                result = Double(numberOne)! -
                Double(numberTwo)!
            case "*":
                result = Double(numberOne)! *
                Double(numberTwo)!
            default:
                break
            }
            if result.truncatingRemainder(dividingBy: 1.0)
                == 0.0{
                resultLabel.text = String(Int(result))
            } else {
                resultLabel.text = String(result)
            }
        }
            func stepper(_ sender: UIStepper) {
            let font = resultLabel.font?.fontName
            let fontSize = CGFloat(sender.value)
            resultLabel.font = UIFont(name: font!, size: fontSize)
        }
            func hiddenButtons(_ sender: UISwitch) {
            buttons.isHidden = !buttons.isHidden
            resultLabel.isHidden = !resultLabel.isHidden
        }
    }
}
