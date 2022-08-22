//
//  ViewController.swift
//  RestaurantPay
//
//  Created by Mateus Amorim on 17/08/22.
//

import UIKit
import SnapKit

class ViewController: UIViewController {
    
    var paymentView = PaymentsView()
    let button = UIButton()
    var result = ResultsPaymentsView()
    var tip = 1.1

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
    
    func calculation() -> String? {
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
extension ViewController: Button {
    func buttonPressed(people: String?, tip: String?) {
        let vc = ResulViewController()
        if calculation() == nil {
            return
        }else {
            vc.dadosChegando(calcResult: self.calculation(), people: people, tip: tip)
            navigationController?.pushViewController(vc, animated: true)
        }
    }
}
