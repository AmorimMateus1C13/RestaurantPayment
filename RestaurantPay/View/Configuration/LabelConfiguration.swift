//
//  LabelConfiguration.swift
//  RestaurantPay
//
//  Created by Mateus Amorim on 17/08/22.
//
import UIKit

class LabelConfiguration: UILabel {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func orientationTitle() {
        text = Constants.Labels.orientationTitle
        textAlignment = .left
        font = UIFont.systemFont(ofSize: 25)
        textColor = .lightGray
        
    }
    
    func selectTip() {
        text = Constants.Labels.selectTip
        font = UIFont.systemFont(ofSize: 25)
        textColor = .lightGray
    }
    
    func chooseSplit() {
        text = Constants.Labels.chooseSplit
        font = UIFont.systemFont(ofSize: 25)
        textColor = .lightGray
    }
    
    func splitNumber() {
        textAlignment = .center
        text = "1"
        textColor = ColorsDesign.Letters.green
        font = UIFont.systemFont(ofSize: 25)
    }
    
    func totalPerPerson() {
        text = Constants.Labels.totalPerPerson
        font = UIFont.systemFont(ofSize: 25)
        textColor = .lightGray
    }
    
    func resultValue() {
        textAlignment = .center
        text = ""
        textColor = ColorsDesign.Letters.green
        font = UIFont.boldSystemFont(ofSize: 45)
    }
    
    func settingsChosen() {
        textAlignment = .center
        font = UIFont.systemFont(ofSize: 25)
        textColor = .lightGray
        numberOfLines = 0
    }
}
