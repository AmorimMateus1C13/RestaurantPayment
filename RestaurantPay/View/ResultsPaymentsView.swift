//
//  ResultsPaymentsView.swift
//  RestaurantPay
//
//  Created by Mateus Amorim on 17/08/22.
//

import UIKit
import SnapKit

class ResultsPaymentsView: UIView {
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupViewConfiguration()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - BAckground
    var backgroundWhite: UIView = {
        let view = ViewConfiguration()
        view.backgroundWhite()
        return view
    }()
    
    // MARK: - Labels
    var totalPerPerson: UILabel = {
        let total = LabelConfiguration()
        total.totalPerPerson()
        return total
    }()
    
    var result: UILabel = {
        let result = LabelConfiguration()
        result.resultValue()
        return result
    }()
    
    var settingsChosen: UILabel = {
        let settings = LabelConfiguration()
        settings.settingsChosen()
        return settings
    }()
    
    // MARK: - Button
    
    var recalculate: UIButton = {
        let recalculate = ButtonConfiguration()
        recalculate.recalculate()
        return recalculate
    }()
    
}

extension ResultsPaymentsView: ViewProtocol {
    
    func buildViewHierarchy() {
        addSubview(backgroundWhite)
    }
    
    func setupConstrants() {
        backgroundWhite.snp.makeConstraints { make in
            make.edges.equalToSuperview()
        }
    }
}
