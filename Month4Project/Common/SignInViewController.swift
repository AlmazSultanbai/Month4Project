//
//  ViewController.swift
//  Month4Project
//
//  Created by Sultanbai Almaz on 10/3/24.
//

import UIKit

class SignIn: UIViewController {
    
    private lazy var mainImage1: UIImageView = {
        let view = UIImageView()
        view.image = UIImage(named: "image")
        return view
    }()
    
    private lazy var titleLabelWelcome: UILabel = {
        let view = UILabel()
        view.text = "Wecome Back"
        view.textColor = .white
        view.font = .systemFont(ofSize: 15)
        return view
    }()

    private lazy var subView: UIView = {
        let view = UIView()
        view.backgroundColor = .darkGray
        return view
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
        
    
    }
    func setupUI(){
        
        view.backgroundColor = .systemBackground
        view.addSubview(titleLabelWelcome)
        view.addSubview(subView)
        
    }
    func setupConstraints(){
        titleLabelWelcome.translatesAutoresizingMaskIntoConstraints = false
        subView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            subView.topAnchor.constraint(equalTo: view.topAnchor, constant: 30),
            subView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -30),
            subView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            subView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20)
            
            
            
        ])
    }

}

