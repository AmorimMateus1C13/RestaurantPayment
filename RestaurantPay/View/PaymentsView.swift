//
//  PaymentsView.swift
//  RestaurantPay
//
//  Created by Mateus Amorim on 17/08/22.
//
import UIKit
import SnapKit

class PaymentsView: UIView {
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupViewConfiguration()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - Background
    var backgrounView: UIView = {
        let view = ViewConfiguration()
        view.backgrounGreen()
        return view
    }()
    
    // MARK: - Butttons
    var zeroButton: UIButton = {
        let zero = ButtonConfiguration()
        zero.zeroPer()
//        let zero = UIButton()
        
        return zero
    }()
    
    var tenButton: UIButton = {
       let ten = ButtonConfiguration()
        ten.tenPer()
        return ten
    }()
    
    var thirteenButton: UIButton = {
        let thirteen = ButtonConfiguration()
        thirteen.thirteenPer()
        return thirteen
    }()
    
    var calculateButton: UIButton = {
        let calculate = ButtonConfiguration()
        calculate.calculate()
        return calculate
    }()
    
    //MARK: - Labels
    
    var orientationTitle: UILabel = {
        let title = LabelConfiguration()
        title.orientationTitle()
        return title
    }()
    
    var selectTip: UILabel = {
        let tip = LabelConfiguration()
        tip.selectTip()
        return tip
    }()
    
    var chooceSplit: UILabel = {
        let choose = LabelConfiguration()
        choose.ChooseSplit()
        return choose
    }()
    
    var splitNUmber: UILabel = {
        let number = LabelConfiguration()
        number.SplitNumber()
        return number
    }()
    
    
    //MARK: - TextField
    
    var textField: UITextField = {
        let textField = TextFieldConfiguration()
        textField.configurations()
//        let textField = UITextField()
//        textField.textAlignment = .center
        return textField
    }()
    
    // MARK: - Stepper
    
    var stepper: UIStepper = {
        let stepper = UIStepper()
//        stepper.contentMode = .scaleToFill
        stepper.minimumValue = 2
//        stepper.
        return stepper
    }()
    
    //MARK: - StacksView
    
    var verticalStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .vertical
//        stackView.spacing = 10
        stackView.alignment = .fill
        stackView.distribution = .fillEqually
        stackView.backgroundColor = .brown
        return stackView
    }()
    
    var stackViewVertical: UIStackView = {
        let stack = UIStackView()
        return stack
    }()
    
    var titleStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .vertical
        stackView.alignment = .center
        stackView.distribution = .fillEqually
        stackView.spacing = 10
        stackView.backgroundColor = .black
        return stackView
    }()
    
    var selectStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .horizontal
        stackView.alignment = .center
        stackView.distribution = .fillEqually
        stackView.spacing = 10
        stackView.backgroundColor = .blue
        return stackView
    }()
    
    var chooseStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .horizontal
        stackView.alignment = .top
        stackView.distribution = .fillEqually
        stackView.spacing = 25
        stackView.backgroundColor = .yellow
        return stackView
    }()
    
}

extension PaymentsView: ViewProtocol {
    func buildViewHierarchy() {
//        addSubview(backgrounView)
//        addSubview(verticalStackView)
//            verticalStackView.addArrangedSubview(titleStackView)
//                titleStackView.addArrangedSubview(orientationTitle)
//                titleStackView.addArrangedSubview(textField)
//            verticalStackView.addArrangedSubview(selectStackView)
//                selectStackView.addArrangedSubview(zeroButton)
//                selectStackView.addArrangedSubview(tenButton)
//                selectStackView.addArrangedSubview(thirteenButton)
//
//            verticalStackView.addArrangedSubview(chooseStackView)
////        chooseStackView.addArrangedSubview(chooceSplit)
//                chooseStackView.addArrangedSubview(splitNUmber)
//                chooseStackView.addArrangedSubview(stepper)
//
//        addSubview(calculateButton)
    }
    
    func setupConstrants() {
        
        
        
//        backgrounView.snp.makeConstraints { make in
//            make.edges.equalToSuperview()
//        }
//
//        verticalStackView.snp.makeConstraints { make in
//            make.top.trailing.leading.equalToSuperview()
////            make.bottom.equalTo(calculateButton.snp.top).offset(50)
//        }
//
////        titleStackView.snp.makeConstraints { make in
////            make.top.equalToSuperview().inset(32)
////            make.trailing.leading.equalToSuperview()
////        }
//
//        orientationTitle.snp.makeConstraints { make in
//            make.top.trailing.leading.equalToSuperview().inset(32)
//        }
//
//        textField.snp.makeConstraints { make in
//            make.trailing.leading.equalToSuperview().inset(32)
//        }
//
////        selectStackView.snp.makeConstraints { make in
////            make.top.equalTo(titleStackView.snp.bottom)
////            make.trailing.leading.equalToSuperview()
////        }
//
//        chooseStackView.snp.makeConstraints { make in
////            make.bottom.equalToSuperview()
//            make.width.equalTo(200)
////            make.bottom.trailing.leading.equalToSuperview().inset(32)
//        }
//
//
////        splitNUmber.snp.makeConstraints { make in
////            make.leading.equalToSuperview().inset(24)
////        }
//
//        calculateButton.snp.makeConstraints { make in
////            make.bottom.trailing.leading.equalToSuperview().inset(24)
//            make.bottom.equalToSuperview().inset(24)
//            make.centerX.equalToSuperview()
//            make.top.equalTo(verticalStackView.snp.bottom).offset(24)
//            make.height.equalTo(75)
//            make.width.equalTo(150)
//        }
//    }
    
}


