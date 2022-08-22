//
//  ResultViewController.swift
//  RestaurantPay
//
//  Created by Mateus Amorim on 18/08/22.
//

import UIKit
import SnapKit

class ResulViewController: UIViewController {
    
    var resultPaymentview = ResultsPaymentsView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .red
        view.addSubview(resultPaymentview)
        makeConstrainst()
        navigationItem.hidesBackButton = true
        resultPaymentview.delegate = self
    }
    

    func makeConstrainst(){
        resultPaymentview.snp.makeConstraints { make in
            make.edges.equalToSuperview()
        }
    }
    
    func dadosChegando(calcResult: String?, people: String?, tip: String?) {
        resultPaymentview.result.text = calcResult
        if let people = people, let tip = tip {
            resultPaymentview.settingsChosen.text = "Split between \(people) people, with \(tip) tip."
        }
    }
}
    //MARK: - Extension Return Page
extension ResulViewController: ReturnPage {
    func refresh() {
        navigationController?.popToRootViewController(animated: true)
    }
}
