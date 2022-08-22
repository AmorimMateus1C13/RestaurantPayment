//
//  ResultsPaymentsView.swift
//  RestaurantPay
//
//  Created by Mateus Amorim on 17/08/22.
//

import UIKit
import SnapKit

protocol ReturnPage {
    func refresh()
}

class ResultsPaymentsView: UIView {
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupViewConfiguration()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    var delegate: ReturnPage?
    
    // MARK: - BAckground
    
    var view: UIView = {
        let view = ViewConfiguration()
        view.backgrounGreen()
        return view
    }()
    
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
        recalculate.addTarget(self, action: #selector(clickButtton), for: .touchUpInside)
        return recalculate
    }()
    
    @objc func clickButtton(){
        delegate?.refresh()
    }
    
    // MARK: - Stack
    var stack: UIStackView = {
        let stack = StackConfiguration()
        stack.verticalConfiguration()
        return stack
    }()
}
    //MARK: - ViewProtocol
extension ResultsPaymentsView: ViewProtocol {
    
    func buildViewHierarchy() {
        addSubview(view)
        view.addSubview(stack)
        stack.addArrangedSubview(totalPerPerson)
        stack.addArrangedSubview(result)
        addSubview(backgroundWhite)
        backgroundWhite.addSubview(settingsChosen)
        addSubview(recalculate)
    }
    
    func setupConstrants() {
        view.snp.makeConstraints { make in
            make.top.leading.trailing.equalToSuperview()
            make.height.equalTo(300)
        }
        stack.snp.makeConstraints { make in
            make.trailing.bottom.leading.equalToSuperview()
        }

        totalPerPerson.snp.makeConstraints { make in
            make.top.equalToSuperview()
            make.height.equalTo(30)
        }
        
        result.snp.makeConstraints { make in
            make.height.equalTo(100)
        }

        backgroundWhite.snp.makeConstraints { make in
            make.top.equalTo(view.snp.bottom)
            make.bottom.leading.trailing.equalToSuperview()
        }
        settingsChosen.snp.makeConstraints { make in
            make.top.equalToSuperview().inset(16)
            make.trailing.leading.equalToSuperview().inset(30)
        }
        
        recalculate.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.bottom.equalToSuperview().inset(36)
            make.height.equalTo(50)
            make.width.equalTo(200)
        }
    }
}
