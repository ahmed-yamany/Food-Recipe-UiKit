//
//  SplashViewController.swift
//  Food-Recipe-UiKit
//
//  Created by Ahmed Yamany on 02/07/2023.
//

import UIKit

class SplashViewController: UIViewController {

    @IBOutlet weak var logoCaptionLabel: UILabel!
    @IBOutlet weak var headerTitleLabel: UILabel!
    @IBOutlet weak var headerCaptionLabel: UILabel!
    @IBOutlet weak var startCookingButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        startCookingButton.apply(.primary)
        updateLogoCaption()
        updateHeaderTitle()
        updateheaderCaption()
    }
    private func updateLogoCaption() {
        logoCaptionLabel.font = .normalBold
        logoCaptionLabel.textColor = .primaryButtonTitle
    }
    private func updateHeaderTitle() {
        headerTitleLabel.font = .titleBold
        headerTitleLabel.numberOfLines = 0
        headerTitleLabel.textColor = .primaryButtonTitle
    }
    private func updateheaderCaption() {
        headerCaptionLabel.font = .normalRegular
        headerCaptionLabel.textColor = .primaryButtonTitle
        headerCaptionLabel.numberOfLines = 0
    }
}
