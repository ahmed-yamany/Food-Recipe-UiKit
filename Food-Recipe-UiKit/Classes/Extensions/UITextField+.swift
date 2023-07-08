//
//  UITextField+.swift
//  Food-Recipe-UiKit
//
//  Created by Ahmed Yamany on 06/07/2023.
//

import UIKit

extension UITextField {
    func makeSecured() {
        let button = UIButton()
        button.setTitleColor(textColor, for: .normal)
        button.tintColor = textColor
        addSubview(button)
        button.centerYInSuperview()
        button.makeConstraints(trailingAnchor: trailingAnchor,
                               padding: UIEdgeInsets(top: 0, left: 0,
                                                     bottom: 0, right: 10))
        button.addTarget(self, action: #selector(self.securedButtonAction), for: .touchUpInside)
        securedButtonAction(button)
    }
    func addLeftPadding(_ padding: CGFloat) {
        let view = UIView()
        view.widthAnchor.constraint(equalToConstant: padding).isActive = true
        leftView = view
        leftViewMode = .always
    }
    func addRightPadding(_ padding: CGFloat) {
        let view = UIView()
        view.widthAnchor.constraint(equalToConstant: padding).isActive = true
        rightView = view
        rightViewMode = .always
    }
    @objc private func securedButtonAction(_ sender: UIButton) {
        isSecureTextEntry.toggle()
        if isSecureTextEntry {
            sender.setImage(UIImage(systemName: "eye"), for: .normal)
        } else {
            sender.setImage(UIImage(systemName: "eye.slash.fill"), for: .normal)
        }
    }
}
