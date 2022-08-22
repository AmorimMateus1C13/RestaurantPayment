//
//  StepperConfiguration.swift
//  RestaurantPay
//
//  Created by Mateus Amorim on 17/08/22.
//

import Foundation
import UIKit

class StepperConfiguration: UIStepper {
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func configuration(){
        minimumValue = 1.0
        maximumValue = 10.0
    }
}
