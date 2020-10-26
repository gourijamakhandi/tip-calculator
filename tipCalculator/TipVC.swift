import UIKit

class TipVC: UIViewController {

    @IBOutlet weak var mealTotalInput: UITextField!
    @IBOutlet weak var tipPercentInput: UITextField!
    
    @IBOutlet weak var tipAmountOutput: UITextField!
    @IBOutlet weak var totalBillOutput: UITextField!
    
    @IBAction func calculateButtonClicked(_ sender: Any) {

        calculateTipAmount()
        
        self.view.endEditing(true)
        
    }
    
    func calculateTipAmount()
    {
        if ((tipPercentInput.text != nil) && (mealTotalInput.text != nil))
        {
            let tipPercent = NSString(string: tipPercentInput.text!)
            let mealTotal = NSString(string: mealTotalInput.text!)
            
            tipAmountOutput.text = String(format: "$%.2f", (tipPercent.doubleValue/100)*mealTotal.doubleValue)
            
            let tipTotal = NSString(string: tipAmountOutput.text!)
            
            totalBillOutput.text = String(format: "$%.2f", mealTotal.doubleValue+((tipPercent.doubleValue/100)*mealTotal.doubleValue))
//            tipPercentInput.text = String(format: "$%.2f", tipPercent)
//            mealTotalInput.text = String(format: "$%.2f", mealTotal)
            
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let config = UIImage.SymbolConfiguration(pointSize: 25, weight: .black, scale: .large)
        
        mealTotalInput.leftView = UIImageView(image: (UIImage(systemName: "dollarsign.circle", withConfiguration: config))?.withTintColor(UIColor(red: 0.22, green: 0.47, blue: 0.44, alpha: 1.00), renderingMode: .alwaysOriginal))
        mealTotalInput.leftViewMode = .always
        
        tipPercentInput.leftView = UIImageView(image: (UIImage(systemName: "percent", withConfiguration: config))?.withTintColor(UIColor(red: 0.22, green: 0.47, blue: 0.44, alpha: 1.00), renderingMode: .alwaysOriginal))
        tipPercentInput.leftViewMode = .always
        
        tipAmountOutput.leftView = UIImageView(image: (UIImage(systemName: "plus", withConfiguration: config))?.withTintColor(UIColor(red: 0.22, green: 0.47, blue: 0.44, alpha: 1.00), renderingMode: .alwaysOriginal))
        tipAmountOutput.leftViewMode = .always
        
        totalBillOutput.leftView = UIImageView(image: (UIImage(systemName: "equal", withConfiguration: config))?.withTintColor(UIColor(red: 0.22, green: 0.47, blue: 0.44, alpha: 1.00), renderingMode: .alwaysOriginal))
        totalBillOutput.leftViewMode = .always

        // Do any additional setup after loading the view.
    }


}

