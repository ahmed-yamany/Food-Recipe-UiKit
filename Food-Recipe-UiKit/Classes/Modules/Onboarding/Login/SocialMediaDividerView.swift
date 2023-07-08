//
//  DividerView.swift
//  Food-Recipe-UiKit
//
//  Created by Ahmed Yamany on 08/07/2023.
//

import UIKit
import MakeConstraints

class SocialMediaDividerView: UIStackView {
    init() {
        super.init(frame: .zero)
        alignment = .center
        distribution = .equalSpacing
        spacing = 20
        addDivider()
    }
    required init(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    private func addDivider() {
        let divider = UIView()
        divider.heightConstraints(1.2)
        divider.widthConstraints(195)
        divider.backgroundColor = .tertiary
        addArrangedSubview(divider)
    }
}
