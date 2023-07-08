//
//  LoginViewController.swift
//  Food-Recipe-UiKit
//
//  Created by Ahmed Yamany on 08/07/2023.
//

import UIKit

class LoginViewController: UIViewController {
    // MARK: - IBOutLets & Views
    //
    @IBOutlet weak var headerTitleLabel: UILabel!
    @IBOutlet weak var headerCaptionLabel: UILabel!
    @IBOutlet weak var textFieldsStackView: UIStackView!
    private let emailTextFields = PrimaryTextField(title: L10n.Login.email,
                                                   placeholder: L10n.Login.emailTextField)
    private let passwordTextFields = PrimaryTextField(title: L10n.Login.password,
                                                      placeholder: L10n.Login.passwordTextField)
    private let forgotPasswordButton: UIButton = UIButton()
    private let primaryButton: UIButton = UIButton()
    @IBOutlet weak var googleSigninButton: UIButton!
    @IBOutlet weak var facebookSigninButton: UIButton!
    // MARK: - LifeCycle
    //
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .background
        updateUI()
    }
    // MARK: - Update UI
    //
    private func updateUI() {
        updateHeaderLabels()
        addTextFields()
        updateForgotPasswordButton()
        updatePrimaryButton()
        googleSigninButton.applyStyle(.socialMedia)
        facebookSigninButton.applyStyle(.socialMedia)
    }
    /// Header Labels
    private func updateHeaderLabels() {
        updateHeaderTitleLabel()
        updateHeaderCaptionLabel()
    }
    private func updateHeaderTitleLabel() {
        headerTitleLabel.font = .headerBold
        headerTitleLabel.textColor = .textColor
        headerTitleLabel.text = L10n.Login.headerTitle
    }
    private func updateHeaderCaptionLabel() {
        headerCaptionLabel.font = .mediumRegular
        headerCaptionLabel.textColor = .textColor
        headerCaptionLabel.text = L10n.Login.headerCaption
    }
    /// TextFields
    private func addTextFields() {
        textFieldsStackView.addArrangedSubview(emailTextFields)
        textFieldsStackView.addArrangedSubview(passwordTextFields)
    }
    private func updateForgotPasswordButton() {
        textFieldsStackView.addArrangedSubview(forgotPasswordButton)
        forgotPasswordButton.applyStyle(.secondary)
        forgotPasswordButton.setTitle(L10n.Login.forgotPassword, for: .normal)
        forgotPasswordButton.contentHorizontalAlignment = .left
        forgotPasswordButton.addTarget(self, action: #selector(forgotPasswordAction(_:)),
                                       for: .touchUpInside)
    }
    private func updatePrimaryButton() {
        textFieldsStackView.addArrangedSubview(primaryButton)
        primaryButton.applyStyle(.primary)
        primaryButton.setTitle(L10n.Login.button, for: .normal)
        primaryButton.addTarget(self, action: #selector(signInButtonAction(_:)),
                                for: .touchUpInside)
    }
    // MARK: - Actions
    //
    @objc func forgotPasswordAction(_ sender: UIButton) {
        print("action")
    }
    @objc func signInButtonAction(_ sender: UIButton) {
        print("action")
    }
}
