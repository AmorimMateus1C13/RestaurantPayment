//
//  ViewController.swift
//  RestaurantPay
//
//  Created by Mateus Amorim on 17/08/22.
//

import UIKit
import SnapKit

class PaymentController: UIViewController {
    
    var paymentView = PaymentsView()
    let button = UIButton()
    var result = ResultsPaymentsView()
    var tip = 1.1
    var serviceCharge = ""
    var serviceWithoutPer = 10

    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(paymentView)
        paymentView.delegate = self
        makeConstrants()
    }

    func makeConstrants(){
        paymentView.snp.makeConstraints { make in
            make.edges.equalToSuperview()
        }
    }
    
    func calculate() -> String? {
        let replacingUserNumber = paymentView.userNumberText.text?.replacingOccurrences(of: ",", with: ".")
        if let numberUser = Double(replacingUserNumber!), let people = Double(paymentView.splitNumber.text!) {
            let resultado = (numberUser * tip) / people
            let resulString = String(format: "%.2f", resultado)
            let replacingResult = resulString.replacingOccurrences(of: ".", with: ",")
            return replacingResult
        }
       return nil
    }

}
    //MARK: - Extension Button
extension PaymentController: Button {
    func selectTipPressed(_ sender: UIButton) {
        paymentView.zeroButton.isSelected = false
        paymentView.tenButton.isSelected = false
        paymentView.thirteenButton.isSelected = false

        sender.isSelected = true
        
        if sender.isSelected {
            sender.backgroundColor = ColorsDesign.ActionsButtons.green
            sender.setTitleColor(.white, for: .normal)
            serviceCharge = sender.currentTitle!
            let serviceChargeString = String(serviceCharge.dropLast())
            serviceWithoutPer = Int(serviceChargeString) ?? 0
            let serviceNumber = Double(serviceChargeString) ?? 0
            tip = 1 + (serviceNumber / 100)
        }
        
        if paymentView.zeroButton.isSelected != true{
            paymentView.zeroButton.setTitleColor(ColorsDesign.ActionsButtons.green, for: .normal)
            paymentView.zeroButton.backgroundColor = .clear
        }
        if paymentView.tenButton.isSelected != true {
            paymentView.tenButton.setTitleColor(ColorsDesign.ActionsButtons.green, for: .normal)
            paymentView.tenButton.backgroundColor = .clear
        }

        if paymentView.thirteenButton.isSelected != true {
            paymentView.thirteenButton.setTitleColor(ColorsDesign.ActionsButtons.green, for: .normal)
            paymentView.thirteenButton.backgroundColor = .clear
        }
    }
    
    func buttonPressed(people: String?) {
        let vc = ResulViewController()
        if calculate() == nil {
            return
        }else {
            vc.dadosChegando(calcResult: self.calculate(), people: people, tip: "\(serviceWithoutPer)%")
            navigationController?.pushViewController(vc, animated: true)
        }
    }
}
