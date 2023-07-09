//
//  UIStackView+.swift
//  Food-Recipe-UiKit
//
//  Created by Ahmed Yamany on 09/07/2023.
//

import UIKit

extension UIStackView {
    func removeAllArrangedSubviews() {
        arrangedSubviews.forEach {
            removeArrangedSubview($0)
            $0.removeFromSuperview()
        }
    }
}
