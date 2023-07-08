//
//  PrimaryTextField.swift
//  Food-Recipe-UiKit
//
//  Created by Ahmed Yamany on 06/07/2023.
//

import UIKit
import MakeConstraints
class PrimaryTextField: UIView {
    private let titleLabel: UILabel = UILabel()
    public let textField: UITextField = UITextField()

    init(title: String, placeholder: String) {
        super.init(frame: .zero)
        updateUI()
        textField.placeholder = placeholder
        titleLabel.text = title
    }
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    public func updateUI() {
        heightConstraints(80)
        updateTextFieldUI()
        updateTitleLabelUI()
    }
    private func updateTextFieldUI() {
        addSubview(textField)
        textField.heightConstraints(55)
        textField.layer.borderColor = UIColor.tertiary.cgColor
        textField.layer.borderWidth = 1
        textField.layer.cornerRadius = 10
        textField.layer.masksToBounds = true
        textField.fillXSuperViewConstraints(paddingLeft: 0.5, paddingRight: 0.5)
        textField.makeConstraints(bottomAnchor: bottomAnchor,
                                  padding: UIEdgeInsets(top: 0, left: 0,
                                                        bottom: 0.5, right: 0))
        textField.addLeftPadding(20)
    }
    private func updateTitleLabelUI() {
       addSubview(titleLabel)
        titleLabel.fillXSuperViewConstraints()
        titleLabel.makeConstraints(topAnchor: topAnchor)
        titleLabel.textAlignment = .left
    }
}
