//
//  TextFieldConfiguration.swift
//  RestaurantPay
//
//  Created by Mateus Amorim on 17/08/22.
//
import UIKit

class TextFieldConfiguration: UITextField {
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func configurations() {
        placeholder = "e.g. 123,56"
        font = UIFont.systemFont(ofSize: 40)
        backgroundColor = .white
        textAlignment = .center
        keyboardType = .decimalPad
    }
}
