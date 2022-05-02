//
//  ViewController.swift
//  Lesson
//
//  Created by Руслан Степашин on 11.04.2022.
//

import UIKit

class LoginViewController: UIViewController {

    private var logoView = UIImageView()
    private let loginButton = UIButton()
    private let createAccountButton = UIButton()
    private let footerView = UIStackView()
    private let buttonsView = UIStackView()
    private let playImage = UIImage(systemName: "play.rectangle.fill")
    private let highlighterImage = UIImage(systemName: "highlighter")?.withTintColor(.purple)
    private let scribbleImage = UIImage(systemName: "scribble.variable")?.withTintColor(.purple)
    private let pencilSlashImage = UIImage(systemName: "pencil.slash")?.withTintColor(.purple)
    private let squareAndPencilImage = UIImage(systemName: "square.and.pencil")?.withTintColor(.purple)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        
        logoView.image = playImage
        logoView.tintColor = .purple
        logoView.contentMode = .scaleAspectFit
        logoView.translatesAutoresizingMaskIntoConstraints = false
        
        loginButton.setTitle("Sign in", for: .normal)
        loginButton.setTitleColor(.purple, for: .normal)
        loginButton.backgroundColor = .white
        loginButton.configuration?.cornerStyle = .capsule
        loginButton.translatesAutoresizingMaskIntoConstraints = false
        
        
        createAccountButton.setTitle("Create Account", for: .normal)
        createAccountButton.setTitleColor(.purple, for: .normal)
        createAccountButton.backgroundColor = .white
        createAccountButton.configuration?.cornerStyle = .capsule
        createAccountButton.translatesAutoresizingMaskIntoConstraints = false
        
        
        buttonsView.spacing = 16
        buttonsView.axis = .vertical
        buttonsView.addArrangedSubview(loginButton)
        buttonsView.addArrangedSubview(createAccountButton)
        buttonsView.translatesAutoresizingMaskIntoConstraints = false
        
        view.addSubview(logoView)
        view.addSubview(buttonsView)
        view.addSubview(footerView)
        
        logoView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        logoView.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        logoView.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        logoView.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.5).isActive = true
        
        buttonsView.topAnchor.constraint(equalTo: logoView.bottomAnchor, constant: 16).isActive = true
        buttonsView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        
        footerView.topAnchor.constraint(equalTo: buttonsView.bottomAnchor, constant: 70).isActive = true
        footerView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        
        
       
    }


}

