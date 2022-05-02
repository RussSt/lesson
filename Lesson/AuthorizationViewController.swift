//
//  AuthorizationViewController.swift
//  Lesson
//
//  Created by Руслан Степашин on 18.04.2022.
//

import UIKit

class AuthorizationViewController: UIViewController {
    
    private let personView = UIImageView()
    private let usernameOrEmailField = UITextField()
    private let passwordField = UITextField()
    private let singInButton = UIButton()
    private let forgotPasswordButton = UIButton()
    private let envelopeView = UIImageView()
    private let lockView = UIImageView()
    private let usernameStackView = UIStackView()
    private let passwordStackView = UIStackView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        personView.image = UIImage(systemName: "person.crop.circle.badge.checkmark.fill")
        personView.tintColor = .purple
        personView.contentMode = .scaleAspectFit
        
        
        usernameOrEmailField.textColor = .black
        usernameOrEmailField.backgroundColor = .white
        usernameOrEmailField.font = .systemFont(ofSize: 14, weight: .regular)
        usernameOrEmailField.textAlignment = .center
        usernameOrEmailField.placeholder = "Username or email address"
        usernameOrEmailField.borderStyle = .roundedRect
        usernameOrEmailField.clearButtonMode = .never
        usernameOrEmailField.minimumFontSize = 17
        usernameOrEmailField.adjustsFontSizeToFitWidth = true


        
        
        passwordField.textColor = .black
        passwordField.backgroundColor = .white
        passwordField.font = .systemFont(ofSize: 14, weight: .regular)
        passwordField.textAlignment = .center
        passwordField.placeholder = "Password"
        passwordField.borderStyle = .roundedRect
        passwordField.clearButtonMode = .never
        passwordField.minimumFontSize = 17
        passwordField.adjustsFontSizeToFitWidth = true
        passwordField.isSecureTextEntry = true
        
        
        
        envelopeView.image = UIImage(systemName: "envelope.fill")
        envelopeView.contentMode = .scaleAspectFit
        envelopeView.tintColor = .purple
        
        
        lockView.image = UIImage(systemName: "lock.fill")
        lockView.contentMode = .scaleAspectFit
        lockView.tintColor = .purple
        
        
        singInButton.setTitle("Sign in", for: .normal)
        singInButton.setTitleColor(.white, for: .normal)
        singInButton.titleLabel?.font = .systemFont(ofSize: 14, weight: .regular)
        singInButton.backgroundColor = .green
        
        
        forgotPasswordButton.setTitle("Forgot to password?", for: .normal)
        forgotPasswordButton.setTitleColor(.purple, for: .normal)
        forgotPasswordButton.titleLabel?.font = .systemFont(ofSize: 14, weight: .regular)
        
        
        
        view.addSubview(personView)
        configureUserNameStackView()
        configurePasswordStackView()
        view.addSubview(usernameStackView)
        view.addSubview(passwordStackView)
        view.addSubview(singInButton)
        view.addSubview(forgotPasswordButton)
        
        
        
        let constraint = [
            personView.topAnchor.constraint(equalTo: view.topAnchor),
            personView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            personView.widthAnchor.constraint(equalToConstant: 100),
            personView.heightAnchor.constraint(equalToConstant: 100),
            usernameStackView.topAnchor.constraint(equalTo: personView.bottomAnchor, constant: 16),
            usernameStackView.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 16),
            usernameStackView.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -16),
            passwordStackView.topAnchor.constraint(equalTo: usernameStackView.bottomAnchor, constant: 16),
            passwordStackView.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 16),
            passwordStackView.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -16),
            singInButton.topAnchor.constraint(equalTo: passwordStackView.bottomAnchor, constant: 16),
            singInButton.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 16),
            singInButton.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -16),
            forgotPasswordButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            forgotPasswordButton.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -16)
      
        ]
    
        NSLayoutConstraint.activate(constraint)
        
    }
    
    func configureUserNameStackView() {
        usernameStackView.addArrangedSubview(envelopeView)
        usernameStackView.addArrangedSubview(usernameOrEmailField)
        usernameStackView.axis = .horizontal
        usernameStackView.spacing = 8
    }
    
    func configurePasswordStackView() {
        passwordStackView.addArrangedSubview(lockView)
        passwordStackView.addArrangedSubview(passwordField)
        passwordStackView.axis = .horizontal
        passwordStackView.spacing = 8
    }
}
