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

    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(paymentView)
        makeConstrants()
    }

    func makeConstrants(){
        paymentView.snp.makeConstraints { make in
            make.edges.equalToSuperview()
        }
    }

}
