//
//  ViewController.swift
//  CurrencyConverter
//
//  Rachel Wesling
//  Mobile App1
//

import UIKit

class ViewController: UIViewController {
    
    
    
    @IBOutlet weak var currencyUSDlabel: UITextField!
    

    var converterLogic = ConverterLogic()
    var CADamount = ""
    var EURamount = ""
    var AUSamount = ""
    


    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func USDamount(_ sender: UITextField) {
        //integerVal = Int(sender.tag)
        if let amountText = sender.text, let amount = Int(amountText) {
            currencyUSDlabel.text = String(converterLogic.getUSDamount(amount))
        }
    }
     
    @IBAction func currencyCAD(_ sender: UISwitch) {
        converterLogic.setCADSwitch(sender.isOn)
    }
    
    @IBAction func currencyGBP(_ sender: UISwitch) {
        converterLogic.setGBPswitch(sender.isOn)
    }
    
    @IBAction func currencyEUR(_ sender: UISwitch) {
        converterLogic.setEURswitch(sender.isOn)
    }
    
    @IBAction func currencyAUS(_ sender: UISwitch) {
        converterLogic.setAUSswitch(sender.isOn)
    }
    
    @IBAction func convert(_ sender: UIButton) {
        CADamount = (converterLogic.convertAmount())
        EURamount = (converterLogic.convertAmount())
        AUSamount = (converterLogic.convertAmount())
        
        self.performSegue(withIdentifier: "toConversion", sender: self)

    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        if segue.identifier == "toConversion" {
            let navigation = segue.destination as! ConverterAmountView
            navigation.CADamount = CADamount
            navigation.EURamount = EURamount
            navigation.AUSamount = AUSamount
        }
    }
    
    
    
    
}
