//
//  ViewConfiguration.swift
//  RestaurantPay
//
//  Created by Mateus Amorim on 17/08/22.
//

import Foundation
import UIKit

class ViewConfiguration: UIView {
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func backgrounGreen() {
        backgroundColor = ColorsDesign.Backgrounds.green    }
    
    func backgroundWhite() {
        backgroundColor = ColorsDesign.Backgrounds.white
    }
}
