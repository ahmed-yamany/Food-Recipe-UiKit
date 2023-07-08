//
//  SplashViewController.swift
//  Food-Recipe-UiKit
//
//  Created by Ahmed Yamany on 02/07/2023.
//

import UIKit

class SplashViewController: UIViewController {
    // MARK: - IBoutlets
    //
    @IBOutlet weak var logoCaptionLabel: UILabel!
    @IBOutlet weak var headerTitleLabel: UILabel!
    @IBOutlet weak var headerCaptionLabel: UILabel!
    @IBOutlet weak var startCookingButton: UIButton!
    // MARK: - Life Cycle
    //
    override func viewDidLoad() {
        super.viewDidLoad()
        startCookingButton.applyStyle(.primary)
        updateLogoCaption()
        updateHeaderTitle()
        updateheaderCaption()
    }
    // MARK: - Update UI
    //
    private func updateLogoCaption() {
        logoCaptionLabel.font = .normalBold
        logoCaptionLabel.textColor = .primaryButtonTitle
        logoCaptionLabel.text = L10n.Splash.title
    }
    private func updateHeaderTitle() {
        headerTitleLabel.font = .titleBold
        headerTitleLabel.numberOfLines = 0
        headerTitleLabel.textColor = .primaryButtonTitle
        headerTitleLabel.text = L10n.Splash.headerTitle
    }
    private func updateheaderCaption() {
        headerCaptionLabel.font = .normalRegular
        headerCaptionLabel.textColor = .primaryButtonTitle
        headerCaptionLabel.numberOfLines = 0
        headerCaptionLabel.text = L10n.Splash.headerCaption
    }
    // MARK: - Actions
    //
    @IBAction func startCookingButtonDidTapped(_ sender: UIButton) {
        let loginVC = LoginViewController()
        loginVC.modalPresentationStyle = .fullScreen
        self.present(loginVC, animated: true)
    }
}
