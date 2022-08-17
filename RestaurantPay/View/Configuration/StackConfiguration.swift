//
//  StackConfiguration.swift
//  RestaurantPay
//
//  Created by Mateus Amorim on 17/08/22.
//

import Foundation
import UIKit
class StackConfiguration: UIStackView {
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func verticalConfiguration(){
        axis = .vertical
        spacing = 10
    }
    
    func horizontalConfiguration(){
        axis =  .horizontal
        spacing = 15
    }
}
