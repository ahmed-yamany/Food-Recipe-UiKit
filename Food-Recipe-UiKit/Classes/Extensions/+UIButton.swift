//
//  UIButton+.swift
//  Food-Recipe-UiKit
//
//  Created by Ahmed Yamany on 02/07/2023.
//

import UIKit
import MakeConstraints

// MARK: - Button style
//
extension UIButton {
    enum ButtonStyle {
        case primary
        case primarySmall
        case secondary
        case socialMedia
        // MARK: - Button Background Color
        fileprivate var buttonBackgroundColor: UIColor {
            switch self {
            case .primary:
                return .primary
            case .primarySmall:
                return .primary
            case .secondary:
                return .clear
            case .socialMedia:
                return .background
            }
        }
        // MARK: - Button Tint Color
        fileprivate var buttonTintColor: UIColor {
            switch self {
            case .primary:
                return .primaryButtonTitle
            case .primarySmall:
                return .primaryButtonTitle
            case .secondary:
                return .secondary
            case .socialMedia:
                return .clear
            }
        }
        // MARK: - Button Font
        fileprivate var buttonFont: UIFont {
            switch self {
            case .primary:
                return .mediumBold
            case .primarySmall:
                return .mediumBold
            case .secondary:
                return .smallRegular
            case .socialMedia:
                return .mediumBold
            }
        }
    }
}

extension UIButton {
    func applyStyle(_ buttonStyle: ButtonStyle) {
        backgroundColor = buttonStyle.buttonBackgroundColor
        tintColor = buttonStyle.buttonTintColor
        setTitleColor(buttonStyle.buttonTintColor, for: .normal)
        titleLabel?.font = buttonStyle.buttonFont
        switch buttonStyle {
        case .primary: applyPrimary()
        case .primarySmall: applyPrimarySmall()
        case .secondary: applySecondary()
        case .socialMedia: applySocialMedia()
        }
    }
}

extension UIButton {
    private func applyPrimary() {
        layer.cornerRadius = 10
        heightConstraints(60)
    }
    private func applyPrimarySmall() {
        layer.cornerRadius = 10
        heightConstraints(37)
    }
    private func applySecondary() {
    }
    private func applySocialMedia() {
        layer.shadowColor = UIColor.tertiary.cgColor
        layer.shadowRadius = 5
        layer.shadowOffset = CGSize(width: 1, height: 1)
        layer.shadowOpacity = 5
        equalSizeConstraints(44)
        layer.cornerRadius = 8
    }
}
