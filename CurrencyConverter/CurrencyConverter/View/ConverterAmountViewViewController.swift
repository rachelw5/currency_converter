//
//  ConverterAmountViewViewController.swift
//  CurrencyConverter
//
//
//

import UIKit

class ConverterAmountView: UIViewController {
    @IBOutlet weak var CADamountLabel: UILabel!
    var CADamount = ""
    
    @IBOutlet weak var EURamountLabel: UILabel!
    var EURamount = ""
    
    @IBOutlet weak var AUSamountlabel: UILabel!
    var AUSamount = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        CADamountLabel.text == CADamount
        EURamountLabel.text == EURamount
        AUSamountlabel.text == AUSamount

        // Do any additional setup after loading the view.
    }
    
    @IBAction func backPressed(_ sender: UIButton) {
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
