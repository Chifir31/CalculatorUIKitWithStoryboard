//
//  ViewController.swift
//  CalculatorUIKitWithStoryboard
//
//  Created by User on 07.05.2024.
//

import UIKit

class ViewController: UIViewController {
    
    let cornerRadius = 36.0
    var selectedOperationBtn: UIButton? = nil
    
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
        operationButtonControl(divisionBtn)
    }
    
    @IBAction func multiplication(_ sender: UIButton) {
        operationButtonControl(multiplicationBtn)
    }
    
    @IBAction func subtraction(_ sender: UIButton) {
        operationButtonControl(minusBtn)
    }
    
    @IBAction func addition(_ sender: UIButton) {
        operationButtonControl(plusBtn)
    }
    
    @IBAction func calculate(_ sender: UIButton) {
        UIView.animate(withDuration: 0.3, animations:{
            sender.backgroundColor = .white
            sender.setTitleColor(.orange, for: .normal)
        }) {_ in
            UIView.animate(withDuration: 0.3){
                sender.backgroundColor = .systemOrange
                sender.setTitleColor(.white, for: .normal)
            }
        }
    }
    
    @IBAction func clear(_ sender: UIButton) {
        tappedButtonAnimation(sender, .lightGray, .white)
        resultLbl.text = "0"
        resultLbl.font = .systemFont(ofSize: 80, weight: .light)
    }
    
    @IBAction func changeSignNumber(_ sender: UIButton) {
        tappedButtonAnimation(sender, .lightGray, .white)
        if resultLbl.text!.contains("-"){
            resultLbl.text = resultLbl.text!.replacingOccurrences(of: "-", with: "")
        } else {
            resultLbl.text = "-" + resultLbl.text!
        }
    }
    
    @IBAction func toPercent(_ sender: UIButton) {
        tappedButtonAnimation(sender, .lightGray, .white)
        var number = resultLbl.text!
        if number.contains(","){
            number = number.replacingOccurrences(of: ",", with: ".")
        }
        number = String(Double(number)! * 0.01)
        if number.contains("."){
            number = number.replacingOccurrences(of: ".", with: ",")
        }
        resultLbl.text = number
    }
    
    @IBAction func selectedNineNumber(_ sender: UIButton) {
        tappedButtonAnimation(sender, .darkGray, .gray)
        addNumber("9")
    }
    
    @IBAction func selectedEightNumber(_ sender: UIButton) {
        tappedButtonAnimation(sender, .darkGray, .gray)
        addNumber("8")
    }
    
    @IBAction func selectedSevenNumber(_ sender: UIButton) {
        tappedButtonAnimation(sender, .darkGray, .gray)
        addNumber("7")
    }
    
    @IBAction func selectedSixNumber(_ sender: UIButton) {
        tappedButtonAnimation(sender, .darkGray, .gray)
        addNumber("6")
    }
    
    @IBAction func selectedFiveNumber(_ sender: UIButton) {
        tappedButtonAnimation(sender, .darkGray, .gray)
        addNumber("5")
    }
    
    @IBAction func selectedFourNumber(_ sender: UIButton) {
        tappedButtonAnimation(sender, .darkGray, .gray)
        addNumber("4")
    }
    
    @IBAction func selectedThreeNumber(_ sender: UIButton) {
        tappedButtonAnimation(sender, .darkGray, .gray)
        addNumber("3")
    }
    
    @IBAction func selectedTwoNumber(_ sender: UIButton) {
        tappedButtonAnimation(sender, .darkGray, .gray)
        addNumber("2")
    }
    
    @IBAction func selectedOneNumber(_ sender: UIButton) {
        tappedButtonAnimation(sender, .darkGray, .gray)
        addNumber("1")
    }
    
    @IBAction func selectedZeroNumber(_ sender: UIButton) {
        tappedButtonAnimation(sender, .darkGray, .gray)
        addNumber("0")

    }
    
    @IBAction func addSeparator(_ sender: UIButton) {
        tappedButtonAnimation(sender, .darkGray, .gray)
        if !resultLbl.text!.contains(","){
            resultLbl.text! += ","
        }
    }
    
    private func addNumber(_ number: String){
        if resultLbl.text == "0"{
            resultLbl.text = number
        } else {
            if resultLbl.text!.count < 9 {
                resultLbl.text! += number
            }
        }
        resultLblControl()
    }
    
    private func setDefaultButtonSettings(_ button: UIButton){
        button.backgroundColor = .systemOrange
        button.setTitleColor(.white, for: .normal)
    }
    
    private func setSelectedButtonSettings(_ button: UIButton){
        button.backgroundColor = .white
        button.setTitleColor(.systemOrange, for: .normal)
    }
    
    private func operationButtonControl(_ selectedButton: UIButton){
        UIView.animate(withDuration: 0.3, animations:{
            selectedButton.backgroundColor = .white
            selectedButton.setTitleColor(.orange, for: .normal)
        })
        if let _ = selectedOperationBtn{
            if self.selectedOperationBtn != selectedButton {
                setDefaultButtonSettings(self.selectedOperationBtn!)
                self.selectedOperationBtn = selectedButton
                setSelectedButtonSettings(self.selectedOperationBtn!)
            }
        } else {
            self.selectedOperationBtn = selectedButton
            setSelectedButtonSettings(self.selectedOperationBtn!)
        }
    }
    
    private func resultLblControl(){
        let countSymbols = resultLbl.text!.count
        if 1 <= countSymbols && countSymbols < 3 {
            resultLbl.font = .systemFont(ofSize: 80, weight: .light)
            return
        }
        if 3 <= countSymbols && countSymbols < 6 {
            resultLbl.font = .systemFont(ofSize: 72, weight: .light)
            return
        }
        if 6 <= countSymbols && countSymbols <= 9 {
            resultLbl.font = .systemFont(ofSize: 64, weight: .light)
            return
        }
        
    }
    
    private func tappedButtonAnimation(_ sender: UIButton, _ baseColor: UIColor, _ animationColor: UIColor){
        UIView.animate(withDuration: 0.3, animations:{
            sender.backgroundColor = animationColor
        }) {_ in
            UIView.animate(withDuration: 0.3){
                sender.backgroundColor = baseColor
            }
        }
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

