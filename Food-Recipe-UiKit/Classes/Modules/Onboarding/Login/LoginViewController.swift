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
    @IBOutlet private weak var headerTitleLabel: UILabel!
    @IBOutlet private weak var headerCaptionLabel: UILabel!
    @IBOutlet private weak var textFieldsStackView: UIStackView!
    private let nameTextField = PrimaryTextField(title: L10n.Signup.name, placeholder: L10n.Signup.nameTextField)
    private let emailTextField = PrimaryTextField(title: L10n.Login.email, placeholder: L10n.Login.emailTextField)
    private let passwordTextField = PrimaryTextField(title: L10n.Login.password, placeholder: L10n.Login.passwordTextField)
    private let confirmPasswordTextField = PrimaryTextField(title: L10n.Signup.confirmPassword,
                                                            placeholder: L10n.Signup.confirmPasswordTextField)
    private let forgotPasswordButton: UIButton = UIButton()
    private let primaryButton: UIButton = UIButton()
    @IBOutlet private weak var googleSigninButton: UIButton!
    @IBOutlet private weak var facebookSigninButton: UIButton!
    @IBOutlet weak var navigationLabel: UILabel!
    @IBOutlet weak var navigationButton: UIButton!
    // MARK: - Properties
    //
    var viewModel = LoginRegisterViewModel()
    // MARK: - LifeCycle
    //
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .background
        self.updateUI()
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
        updateNavigationLabel()
        updateNavigationButton()
    }
    /// Header Labels
    private func updateHeaderLabels() {
        updateHeaderTitleLabel()
        updateHeaderCaptionLabel()
    }
    private func updateHeaderTitleLabel() {
        headerTitleLabel.font = viewModel.signUpUser ? .mediumBold : .headerBold
        headerTitleLabel.textColor = .textColor
        headerTitleLabel.text = viewModel.signUpUser ? L10n.Signup.headerTitle : L10n.Login.headerTitle
    }
    private func updateHeaderCaptionLabel() {
        headerCaptionLabel.font = viewModel.signUpUser ? .smallRegular : .mediumRegular
        headerCaptionLabel.textColor = .textColor
        headerCaptionLabel.text = viewModel.signUpUser ? L10n.Signup.headerCaption : L10n.Login.headerCaption
    }
    /// TextFields
    private func addTextFields() {
        textFieldsStackView.removeAllArrangedSubviews()
        if viewModel.signUpUser {
            textFieldsStackView.addArrangedSubview(nameTextField)
        }
        textFieldsStackView.addArrangedSubview(emailTextField)
        textFieldsStackView.addArrangedSubview(passwordTextField)
        if viewModel.signUpUser {
            textFieldsStackView.addArrangedSubview(confirmPasswordTextField)
        }
    }
    /// forgot password
    private func updateForgotPasswordButton() {
        var config = UIButton.Configuration.plain()
        textFieldsStackView.addArrangedSubview(forgotPasswordButton)
        forgotPasswordButton.applyStyle(.secondary)
        let title = viewModel.signUpUser ? L10n.Signup.termsAndConditions : L10n.Login.forgotPassword
        forgotPasswordButton.setTitle(title, for: .normal)
        forgotPasswordButton.contentHorizontalAlignment = .left
        forgotPasswordButton.contentVerticalAlignment = .top
        forgotPasswordButton.addTarget(self, action: #selector(forgotPasswordAction(_:)),
                                       for: .touchUpInside)
        if viewModel.signUpUser {
            config.image = UIImage(systemName: "square")
        } else {
            config.image = nil
        }
        forgotPasswordButton.configuration = config
    }
    private func updatePrimaryButton() {
        textFieldsStackView.addArrangedSubview(primaryButton)
        primaryButton.applyStyle(.primary)
        let title = viewModel.signUpUser ? L10n.Signup.button : L10n.Login.button
        primaryButton.setTitle(title, for: .normal)
        primaryButton.addTarget(self, action: #selector(self.signInButtonAction),
                                for: .touchUpInside)
    }
    /// navigation button
    private func updateNavigationLabel() {
        navigationLabel.font = .smallRegular
        navigationLabel.textColor = .textColor
        navigationLabel.text = viewModel.signUpUser ? L10n.Signup.signin : L10n.Login.signup
    }
    private func updateNavigationButton() {
        navigationButton.applyStyle(.secondary)
        let title = viewModel.signUpUser ? L10n.Login.button : L10n.Signup.button
        navigationButton.setTitle(title, for: .normal)
    }
    // MARK: - Actions
    //
    @objc func forgotPasswordAction(_ sender: UIButton) {
        viewModel.acceptTerms.toggle()
        print(viewModel.acceptTerms)
        var config = UIButton.Configuration.plain()
        if viewModel.acceptTerms {
            config.image = UIImage(systemName: "checkmark.square")
        } else {
            config.image = UIImage(systemName: "square")
        }
        forgotPasswordButton.configuration = config
    }
    @objc func signInButtonAction() {
    }
    @IBAction func navigationButtonAction(_ sender: UIButton) {
        viewModel.signUpUser.toggle()
        self.updateUI()
    }
}
