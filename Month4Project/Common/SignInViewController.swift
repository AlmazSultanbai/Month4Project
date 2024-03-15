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
    
//    private lazy var labelWelcome: UILabel = {
//        let view = UILabel()
//        view.text = "Welcome Back"
//        view.textColor = .white
//        view.font = .systemFont(ofSize: 34, weight: .bold)
//        return view
//    }()
    private lazy var labelWelcome: UILabel = MakerView().makeLabel(text: "Welcome Back",
                                                                   textSize: 33,
                                                                   textWeight: .bold)
//    private lazy var labelSignIn: UILabel = {
//        let view = UILabel()
//        view.text = "Sign in to continue"
//        view.textColor = .lightText
//        view.font = .systemFont(ofSize: 20, weight: .regular)
//        return view
//    }()
    private lazy var labelSignIn: UILabel = MakerView().makeLabel(text: "Sign In to Continue",
                                                                  textColor: .lightText,
                                                                  textSize: 20,
                                                                  textWeight: .regular)
    
//    private lazy var labelEmployeeId: UILabel = {
//        let view = UILabel()
//        view.text = "Emplyee Id Email"
//        view.textColor = .lightGray
//        view.font = .systemFont(ofSize: 12)
//        return view
//    }()
    private lazy var labelEmployeeId: UILabel = MakerView().makeLabel(text: "Employee Id Email", 
                                                                      textColor: .lightGray,
                                                                      textSize: 12)
    
//    private lazy var labelRemenberMe: UILabel = {
//        let view = UILabel()
//        view.text = "Remember Me"
//        view.textColor = .black
//        return view
//    }()
    private lazy var labelRememberMe: UILabel = MakerView().makeLabel(text: "Remember Me",
                                                                      textColor: .black,
                                                                      textSize: 18,
                                                                      textWeight: .bold)
    
//    private lazy var labelPassword: UILabel = {
//        let view = UILabel()
//        view.text = "Password"
//        view.font = .systemFont(ofSize: 12)
//
//        view.textColor = .lightGray
//        return view
//    }()
    
    private lazy var labelPassword: UILabel = MakerView().makeLabel(text: "Password",
                                                                    textColor: .lightGray,
                                                                    textSize: 12)
    
//    private lazy var labelDontHaveAccount: UILabel = {
//        let view = UILabel()
//        view.text = "Don't have an account?"
//        view.font = .systemFont(ofSize: 12, weight: .regular)
//        view.textColor = .black
//        return view
//    }()
    private lazy var labelDontHaveAccount: UILabel = MakerView().makeLabel(text: "Don't have an account?",
                                                                           textColor: .black,
                                                                           
                                                                           textSize: 12)
    //buttons
    private lazy var forgotPasswrdBtn: UIButton = {
        let view = UIButton(type: .system) // обьязательно для кнопки
        view.titleLabel?.text = "Forgot Password?"
        view.titleLabel?.textColor = .systemBlue
        return view
    }()
    
    private lazy var signInBtn: UIButton = {
        let view = UIButton(type: .system)
        view.setTitle("Sign In", for: .normal)
        view.setTitleColor(.white, for: .normal)
        view.titleLabel?.font = .systemFont(ofSize: 18, weight: .bold)
        view.backgroundColor = UIColor(named: "color2")
        view.layer.cornerRadius = 12
        view.addTarget(self, action: #selector(signInBtnTapped(sender:)), for: .touchUpInside)
        return view
    }()
    
    private lazy var signUpBtn: UIButton = {
        let view = UIButton(type: .system)
        view.setTitle("Sign Up", for: .normal)
        view.setTitleColor(.systemBlue, for: .normal)
        view.titleLabel?.font = .systemFont(ofSize: 12, weight: .bold)
        view.addTarget(self, action: #selector(signUpBtnTapped(sender:)), for: .touchUpInside)
        view.backgroundColor = .white
        return view
    }()
    //textfield
//    private lazy var emailTf: UITextField = {
//        let view = UITextField()
//        view.placeholder = "hello"
//        view.layer.cornerRadius = 16
//        view.layer.borderColor = UIColor.red.cgColor
//        view.layer.borderWidth = 0
//        let viewTf = UIView(frame: CGRect(x: 0, y: 0, width: 10, height: 1))
//        view.leftView = viewTf
//        view.leftViewMode = .always
//        return view
//    }()
    private lazy var emailTf: UITextField = MakerView().makeTF(textColor: .black,
                                                               placeholder: "Hello",
                                                               borderColor: UIColor.red.cgColor,
                                                               cornerRadius: 16)
                                                               
    
    
//    private lazy var passwrdTf: UITextField = {
//        let view = UITextField()
//        view.placeholder = "password"
//        view.layer.cornerRadius = 16
//        view.layer.borderColor = UIColor.red.cgColor
//        view.layer.borderWidth = 0
//        let tfView = UIView(frame: CGRect(x: 0, y: 0, width: 10, height: 1))
//        view.leftView = tfView
//        view.leftViewMode = .always
//        return view
//    }()
    private lazy var  passwrdTf: UITextField = MakerView().makeTF(textColor: .black,
                                                                  placeholder: "Shunaka",
                                                                  borderColor: UIColor.red.cgColor,
                                                                  cornerRadius: 16)
    
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
        
        
    }
    func setupUI(){
        
        view.backgroundColor = .init(named: "color1")
        view.addSubview(subView)
        view.addSubview(mainImage1)
        subView.addSubview(forgotPasswrdBtn)
        subView.addSubview(signInBtn)
        subView.addSubview(signUpBtn)
        subView.addSubview(labelSignIn)
        subView.addSubview(labelRememberMe)
        subView.addSubview(labelPassword)
        subView.addSubview(labelDontHaveAccount)
        subView.addSubview(labelEmployeeId)
        subView.addSubview(emailTf)
        subView.addSubview(passwrdTf)
        mainImage1.addSubview(labelWelcome)
        setupConstraints()
    }
    func setupConstraints(){
        
        mainImage1.translatesAutoresizingMaskIntoConstraints = false
        signInBtn.translatesAutoresizingMaskIntoConstraints = false
        signUpBtn.translatesAutoresizingMaskIntoConstraints = false
        labelWelcome.translatesAutoresizingMaskIntoConstraints = false
        labelSignIn.translatesAutoresizingMaskIntoConstraints = false
        labelPassword.translatesAutoresizingMaskIntoConstraints = false
        labelRememberMe.translatesAutoresizingMaskIntoConstraints = false
        labelEmployeeId.translatesAutoresizingMaskIntoConstraints = false
        labelDontHaveAccount.translatesAutoresizingMaskIntoConstraints = false
        emailTf.translatesAutoresizingMaskIntoConstraints = false
        passwrdTf.translatesAutoresizingMaskIntoConstraints = false
        subView.translatesAutoresizingMaskIntoConstraints = false
        
        
        NSLayoutConstraint.activate([
            
            subView.topAnchor.constraint(equalTo: view.topAnchor, constant: 400),
            subView.widthAnchor.constraint(equalToConstant: 360),
            subView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0),
            subView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0),
            subView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 0),
            
            mainImage1.topAnchor.constraint(equalTo: view.topAnchor, constant: 55),
            mainImage1.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 25),
            mainImage1.widthAnchor.constraint(equalToConstant: 350),
            mainImage1.heightAnchor.constraint(equalToConstant: 256),
            
            signInBtn.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -110),
            signInBtn.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 120),
            signInBtn.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -120),
            signInBtn.heightAnchor.constraint(equalToConstant: 40),
            
            labelWelcome.topAnchor.constraint(equalTo: view.topAnchor, constant: 290),
            labelWelcome.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 15),
            labelWelcome.widthAnchor.constraint(equalToConstant: 226),
            labelWelcome.heightAnchor.constraint(equalToConstant: 77),
            
            labelSignIn.topAnchor.constraint(equalTo: labelWelcome.bottomAnchor, constant: -5),
            labelSignIn.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 15),
            labelSignIn.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -50),
            
            labelEmployeeId.topAnchor.constraint(equalTo: mainImage1.bottomAnchor, constant: 130),
            labelEmployeeId.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            labelEmployeeId.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -50),
            
            emailTf.topAnchor.constraint(equalTo: labelEmployeeId.bottomAnchor, constant: 20),
            emailTf.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            emailTf.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            emailTf.heightAnchor.constraint(equalToConstant: 44),
            
            labelPassword.topAnchor.constraint(equalTo: emailTf.bottomAnchor, constant: 70),
            labelPassword.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            labelPassword.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30),
            
            passwrdTf.topAnchor.constraint(equalTo: labelPassword.bottomAnchor, constant: 10),
            passwrdTf.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            passwrdTf.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            passwrdTf.heightAnchor.constraint(equalToConstant: 44),
            
            labelDontHaveAccount.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -40),
            labelDontHaveAccount.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            labelDontHaveAccount.heightAnchor.constraint(equalToConstant: 30),
            
            labelRememberMe.topAnchor.constraint(equalTo: labelPassword.bottomAnchor, constant: 60),
            labelRememberMe.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 70),
            labelRememberMe.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 50),
            
            signUpBtn.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -47),
            signUpBtn.leadingAnchor.constraint(equalTo: labelDontHaveAccount.trailingAnchor, constant: 5),
            signUpBtn.heightAnchor.constraint(equalToConstant: 18),
            
        ])
        //signUpBtn.addTarget(self, action: #selector(signUpBtnTapped), for: .touchUpInside)
        //signInBtn.addTarget(self, action: #selector(signInBtnTapped), for: .touchUpInside)
    }
    @objc func signUpBtnTapped(sender: UIButton) {
        print("yes")
    }
    @objc func signInBtnTapped(sender: UIButton){ // @objc работает через add target
        
        validateTF(emailTf, error: "please write email")
        validateTF2(passwrdTf, error: "please write password")
        
        if passwrdTf.text?.count ?? 0 >= 5, emailTf.text?.count ?? 0 >= 5 {
            let vc = SecondPageViewController()
            navigationController?.pushViewController(vc, animated: true)
        }
    }
    
    private func validateTF(_ tf: UITextField, error: String){ // что бы функция заработала нужно ее вызывать
                                                               // во view did load
        
          if tf.text?.count ?? 0 < 5 {
                emailTf.placeholder = error
                emailTf.layer.borderWidth = 2
            }
       }
   private func validateTF2(_ tf: UITextField, error: String){
            
            if tf.text?.count ?? 0 < 5 {
                passwrdTf.placeholder = error
                passwrdTf.layer.borderWidth = 2
                
            }
        }
    }
    


