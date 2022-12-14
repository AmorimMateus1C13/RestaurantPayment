//
//  PaymentsView.swift
//  RestaurantPay
//
//  Created by Mateus Amorim on 17/08/22.
//
import UIKit
import SnapKit

protocol Button {
    func buttonPressed(people: String?)
    func selectTipPressed(_ sender: UIButton)
}


class PaymentsView: UIView {
    override init(frame: CGRect) {
        super.init(frame: frame)
        userNumberText.delegate = self
        setupViewConfiguration()
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    var delegate: Button?
    
    // MARK: - Background
    var view: UIView = {
        let view =  ViewConfiguration()
        view.backgroundWhite()
        return view
    }()
    
    var backgroundView: UIView = {
        let view = ViewConfiguration()
        view.backgrounGreen()
        return view
    }()
    
    // MARK: - Butttons
    
    var zeroButton: UIButton = {
        let zero = ButtonConfiguration()
        zero.zeroPer()
        zero.addTarget(self, action: #selector(selectPressed(_:)), for: .touchUpInside)
        return zero
    }()
    
    var tenButton: UIButton = {
       let ten = ButtonConfiguration()
        ten.tenPer()
        ten.addTarget(self, action: #selector(selectPressed(_:)), for: .touchUpInside)
        return ten
    }()
    
    var thirteenButton: UIButton = {
        let thirteen = ButtonConfiguration()
        thirteen.thirteenPer()
        thirteen.addTarget(self, action: #selector(selectPressed(_:)), for: .touchUpInside)
        return thirteen
    }()

    var calculateButton: UIButton = {
        let calculate = ButtonConfiguration()
        calculate.calculate()
        calculate.addTarget(self, action: #selector(buttonPressed), for: .touchUpInside)
        return calculate
    }()
    
    @objc func selectPressed(_ sender: UIButton) {
        delegate?.selectTipPressed(sender)
    }
    
    @objc func buttonPressed(){
        delegate?.buttonPressed(people: splitNumber.text)
    }
    
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
        choose.chooseSplit()
        return choose
    }()
    
    var splitNumber: UILabel = {
        let number = LabelConfiguration()
        number.splitNumber()
        return number
    }()
    
    //MARK: - TextField
    var userNumberText: UITextField = {
        let textField = TextFieldConfiguration()
        textField.configurations()
        textField.endEditing(true)
        return textField
    }()
    
    // MARK: - Stepper
    var stepper: UIStepper = {
        let stepper = StepperConfiguration()
        stepper.configuration()
        stepper.addTarget(self, action: #selector(splitNumber(_:)), for: .touchUpInside)
        return stepper
    }()
    
    @objc func splitNumber(_ sender: UIStepper){
        splitNumber.text = String(format: "%.f", sender.value)
    }
    
    //MARK: - StacksView
    var verticalStackView: UIStackView = {
        let stack = StackConfiguration()
        stack.verticalConfiguration()
        return stack
    }()
    
    var titleStackView: UIStackView = {
        let stack = StackConfiguration()
        stack.verticalConfiguration()
        return stack
    }()
    
    var selectStackView: UIStackView = {
        let stack = StackConfiguration()
        stack.proportionallyConfiguration()
        return stack
    }()
    
    var chooseStackView: UIStackView = {
        let stack = StackConfiguration()
        stack.equallyConfiguration()
        return stack
    }()
}

    //MARK: - Extension ViewProtocol
extension PaymentsView: ViewProtocol {
    func buildViewHierarchy() {
        addSubview(view)
        
        view.addSubview(verticalStackView)
        verticalStackView.addArrangedSubview(orientationTitle)
        verticalStackView.addArrangedSubview(userNumberText)
        
        view.addSubview(backgroundView)
        backgroundView.addSubview(titleStackView)
        titleStackView.addArrangedSubview(selectTip)
        titleStackView.addArrangedSubview(selectStackView)
            
        selectStackView.addArrangedSubview(zeroButton)
        selectStackView.addArrangedSubview(tenButton)
        selectStackView.addArrangedSubview(thirteenButton)
        
        titleStackView.addArrangedSubview(chooceSplit)
        titleStackView.addArrangedSubview(chooseStackView)
        
        chooseStackView.addArrangedSubview(splitNumber)
        chooseStackView.addArrangedSubview(stepper)
        
        view.addSubview(calculateButton)
    }
    
    func setupConstrants() {
        
        view.snp.makeConstraints { make in
            make.edges.equalToSuperview()
        }
        
        verticalStackView.snp.makeConstraints { make in
            make.top.equalTo(40)
            make.trailing.leading.equalToSuperview()
        }
        
        orientationTitle.snp.makeConstraints { make in
            make.top.equalToSuperview()
            make.trailing.leading.equalToSuperview().inset(30)
            make.height.equalTo(30)
        }
        
        userNumberText.snp.makeConstraints { make in
            make.height.equalTo(50)
            make.trailing.leading.equalToSuperview()
        }
        
        backgroundView.snp.makeConstraints { make in
            make.top.equalTo(verticalStackView.snp.bottom).offset(40)
            make.bottom.trailing.leading.equalToSuperview()
        }
        
        titleStackView.snp.makeConstraints { make in
            make.top.leading.trailing.equalToSuperview()
        }
        
        selectTip.snp.makeConstraints { make in
            make.trailing.leading.equalToSuperview().inset(30)
        }
        
        selectStackView.snp.makeConstraints { make in
            make.trailing.leading.equalToSuperview().inset(30)
        }
        
        chooceSplit.snp.makeConstraints { make in
            make.trailing.leading.equalToSuperview().inset(30)

        }
        
        calculateButton.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.bottom.equalToSuperview().inset(32)
            make.height.equalTo(50)
            make.width.equalTo(200)
        }
    }
}

    //MARK: - Extension UITextFieldDelegate
extension PaymentsView: UITextFieldDelegate {
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        userNumberText.resignFirstResponder()
        return true
    }

    func textFieldShouldEndEditing(_ textField: UITextField) -> Bool {
        if textField.text != ""{
            return true
        } else {
            textField.placeholder = "Type Something"
            return false
        }
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        userNumberText.resignFirstResponder()
    }
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        let text = (textField.text ?? "") as NSString
        let newText = text.replacingCharacters(in: range, with: string)
        if let regex = try? NSRegularExpression(pattern: "^[0-9]*((\\.|,)[0-9]{0,2})?$", options: .caseInsensitive) {
            return regex.numberOfMatches(in: newText, options: .reportProgress, range: NSRange(location: 0, length: (newText as NSString).length)) > 0
        }
        return false
    }
}


