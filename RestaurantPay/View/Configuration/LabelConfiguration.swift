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
    }
    
    func ChooseSplit() {
        text = Constants.Labels.chooseSplit
        font = UIFont.systemFont(ofSize: 25)
        textColor = .lightGray
    }
    
    func SplitNumber() {
        textAlignment = .center
        text = "2"
        textColor = ColorsDesign.Letters.green
//        backgroundColor = .yellow
        font = UIFont.systemFont(ofSize: 25)
    }
    
    func totalPerPerson() {
        text = Constants.Labels.totalPerPerson
    }
    
    func resultValue() {
        
    }
    
    func settingsChosen() {
        text = Constants.Labels.settingsChosen
    }
    

}
