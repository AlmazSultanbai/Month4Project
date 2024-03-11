//
//  ViewController.swift
//  Month4Project
//
//  Created by Sultanbai Almaz on 10/3/24.
//

import UIKit

class SignInViewController: UIViewController {
    //images
    private lazy var mainImage1: UIImageView = {
        let view = UIImageView()
        view.image = UIImage(named: "image")
        return view
    }()
   //labels
    private lazy var labelWelcome: UILabel = {
        let view = UILabel()
        view.text = "Wecome Back"
        view.textColor = .white
        view.font = .systemFont(ofSize: 35)
        return view
    }()
    private lazy var labelSignIn: UILabel = {
        let view = UILabel()
        view.text = "Sign in to continue"
        view.textColor = .white
        view.font.withSize(28)
        return view
    }()
    
    private lazy var labelEmployeeId: UILabel = {
        let view = UILabel()
        view.text = "Emplyee Id Email"
        view.textColor = .lightGray
        view.font.withSize(12)
        return view
    }()
    private lazy var labelRemenberMe: UILabel = {
        let view = UILabel()
        view.text = "Remember Me"
        view.textColor = .black
        return view
    }()
    private lazy var labelPassword: UILabel = {
        let view = UILabel()
        view.text = "Password"
        view.font.withSize(12)
        view.textColor = .lightGray
        return view
    }()
  //buttons
    private lazy var btnForgotPswrd: UIButton = {
        let view = UIButton()
        view.titleLabel?.text = "Forgot Password?"
        return view
    }()
  //subViews
    private lazy var subView: UIView = {
        let view = UIView()
        view.backgroundColor = .white
        view.layer.cornerRadius = 35
        return view
    }()
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupUI()
        setupConstraints()
    
    }
    func setupUI(){
        
        view.backgroundColor = .init(named: "color1")
        view.addSubview(labelWelcome)
        view.addSubview(labelSignIn)
        view.addSubview(labelEmployeeId)
        view.addSubview(labelRemenberMe)
        view.addSubview(labelPassword)
        view.addSubview(subView)
        view.addSubview(mainImage1)
        
        
    }
    func setupConstraints(){
        
        mainImage1.translatesAutoresizingMaskIntoConstraints = false
        labelWelcome.translatesAutoresizingMaskIntoConstraints = false
        labelSignIn.translatesAutoresizingMaskIntoConstraints = false
        labelPassword.translatesAutoresizingMaskIntoConstraints = false
        labelRemenberMe.translatesAutoresizingMaskIntoConstraints = false
        labelEmployeeId.translatesAutoresizingMaskIntoConstraints = false
        subView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            
            mainImage1.topAnchor.constraint(equalTo: view.topAnchor, constant: 55),
            mainImage1.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 25),
            mainImage1.widthAnchor.constraint(equalToConstant: 350),
            mainImage1.heightAnchor.constraint(equalToConstant: 256),
            
            labelWelcome.topAnchor.constraint(equalTo: view.topAnchor, constant: 287),
            labelWelcome.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 15),
            labelWelcome.widthAnchor.constraint(equalToConstant: 226),
            labelWelcome.heightAnchor.constraint(equalToConstant: 77),
            
            labelSignIn.topAnchor.constraint(equalTo: labelWelcome.bottomAnchor, constant: 0),
            labelSignIn.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 15),
            labelSignIn.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -50),
            
            labelEmployeeId.topAnchor.constraint(equalTo: mainImage1.bottomAnchor, constant: 60),
            labelEmployeeId.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 10),
            labelEmployeeId.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -50),
            
            labelPassword.topAnchor.constraint(equalTo: mainImage1.bottomAnchor, constant: 100),
            labelPassword.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 10),
            labelPassword.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30),
            
            subView.topAnchor.constraint(equalTo: view.topAnchor, constant: 400),
            subView.widthAnchor.constraint(equalToConstant: 360),
            subView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0),
            subView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0),
            subView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 0),
            
        ])
    }

}

