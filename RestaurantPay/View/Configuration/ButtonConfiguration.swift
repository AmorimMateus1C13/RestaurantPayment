//
//  ButtonConfiguration.swift
//  RestaurantPay
//
//  Created by Mateus Amorim on 17/08/22.
//
import UIKit

class ButtonConfiguration: UIButton {
    override init(frame: CGRect) {
        super.init(frame: frame)
        titleLabel?.font = UIFont.systemFont(ofSize: 35)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    func zeroPer() {
        setTitle(Constants.Buttons.zeroPerButton, for: .normal)
    }
    
    func tenPer() {
        setTitle(Constants.Buttons.tenPerButton, for: .normal)
    }
    
    func thirteenPer() {
        setTitle(Constants.Buttons.thirteenPerButton, for: .normal)
    }
    
    func calculate() {
        setTitle(Constants.Buttons.calculate, for: .normal)
        backgroundColor =  ColorsDesign.ActionsButtons.green
    }
    
    func recalculate() {
        setTitle(Constants.Buttons.recalculate, for: .normal)
    }
}
