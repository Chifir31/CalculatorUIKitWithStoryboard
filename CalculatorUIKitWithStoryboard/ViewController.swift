//
//  ViewController.swift
//  CalculatorUIKitWithStoryboard
//
//  Created by User on 07.05.2024.
//

import UIKit

class ViewController: UIViewController {
    
    let cornerRadius = 36.0
    let operationId = -1
    
    @IBOutlet weak var resultLbl: UILabel!
    
    @IBOutlet weak var divisionBtn: UIButton!
    @IBOutlet weak var multiplicationBtn: UIButton!
    @IBOutlet weak var minusBtn: UIButton!
    @IBOutlet weak var plusBtn: UIButton!
    @IBOutlet weak var resultBtn: UIButton!
    
    
    @IBOutlet weak var clearBtn: UIButton!
    @IBOutlet weak var changeSignNumberBtn: UIButton!
    @IBOutlet weak var percentBtn: UIButton!
    
    @IBOutlet weak var nineNumberBtn: UIButton!
    @IBOutlet weak var eightNumberBtn: UIButton!
    @IBOutlet weak var sevenNumberBtn: UIButton!
    @IBOutlet weak var sixNumberBtn: UIButton!
    @IBOutlet weak var fiveNumberBtn: UIButton!
    @IBOutlet weak var fourNumberBtn: UIButton!
    @IBOutlet weak var threeNumberBtn: UIButton!
    @IBOutlet weak var twoNumberBtn: UIButton!
    @IBOutlet weak var oneNumberBtn: UIButton!
    @IBOutlet weak var zeroNumberBtn: UIButton!
    
    @IBOutlet weak var separatorBtn: UIButton!
    
    @IBAction func division(_ sender: UIButton) {
        resultLbl.text = "/"
    }
    
    @IBAction func multiplication(_ sender: UIButton) {
        resultLbl.text = "x"
    }
    
    @IBAction func subtraction(_ sender: UIButton) {
        resultLbl.text = "-"
    }
    
    @IBAction func addition(_ sender: UIButton) {
        resultLbl.text = "+"
    }
    
    @IBAction func calculate(_ sender: UIButton) {
        resultLbl.text = "="
    }
    
    @IBAction func clear(_ sender: UIButton) {
        resultLbl.text = "0"
    }
    
    @IBAction func changeSignNumber(_ sender: UIButton) {
        resultLbl.text! = "-" + resultLbl.text!
    }
    
    @IBAction func toPercent(_ sender: UIButton) {
    }
    
    @IBAction func selectedNineNumber(_ sender: UIButton) {
        resultLbl.text = "9"
    }
    
    @IBAction func selectedEightNumber(_ sender: UIButton) {
        resultLbl.text = "8"
    }
    
    @IBAction func selectedSevenNumber(_ sender: UIButton) {
        resultLbl.text = "7"
    }
    
    @IBAction func selectedSixNumber(_ sender: UIButton) {
        resultLbl.text = "6"
    }
    
    @IBAction func selectedFiveNumber(_ sender: UIButton) {
        resultLbl.text = "5"
    }
    
    @IBAction func selectedFourNumber(_ sender: UIButton) {
        resultLbl.text = "4"
    }
    
    @IBAction func selectedThreeNumber(_ sender: UIButton) {
        resultLbl.text = "3"
    }
    
    @IBAction func selectedTwoNumber(_ sender: UIButton) {
        resultLbl.text = "2"
    }
    
    @IBAction func selectedOneNumber(_ sender: UIButton) {
        resultLbl.text = "1"
    }
    
    @IBAction func selectedZeroNumber(_ sender: UIButton) {
        resultLbl.text = "0"
    }
    
    @IBAction func addSeparator(_ sender: UIButton) {
        resultLbl.text! += ","
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        divisionBtn.layer.cornerRadius = cornerRadius
        multiplicationBtn.layer.cornerRadius = cornerRadius
        minusBtn.layer.cornerRadius = cornerRadius
        plusBtn.layer.cornerRadius = cornerRadius
        resultBtn.layer.cornerRadius = cornerRadius
        clearBtn.layer.cornerRadius = cornerRadius
        changeSignNumberBtn.layer.cornerRadius = cornerRadius
        percentBtn.layer.cornerRadius = cornerRadius
        
        nineNumberBtn.layer.cornerRadius = cornerRadius
        eightNumberBtn.layer.cornerRadius = cornerRadius
        sevenNumberBtn.layer.cornerRadius = cornerRadius
        sixNumberBtn.layer.cornerRadius = cornerRadius
        fiveNumberBtn.layer.cornerRadius = cornerRadius
        fourNumberBtn.layer.cornerRadius = cornerRadius
        threeNumberBtn.layer.cornerRadius = cornerRadius
        twoNumberBtn.layer.cornerRadius = cornerRadius
        oneNumberBtn.layer.cornerRadius = cornerRadius
        zeroNumberBtn.layer.cornerRadius = cornerRadius
        separatorBtn.layer.cornerRadius = cornerRadius
    }

}

