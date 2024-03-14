//
//  SecondViewController.swift
//  Month4Project
//
//  Created by Sultanbai Almaz on 10/3/24.
//

import UIKit

class SecondPageViewController: UIViewController {
    
    
    private lazy var btnOne: UIButton = {
        let view = UIButton( frame: CGRect(x: 100, y: 400, width: 200, height: 50) )
       
        view.backgroundColor = .green
        view.setTitle("Go to third Page", for: .normal)
        view.setTitleColor(.black, for: .normal)
        view.addTarget(self, action: #selector(btnOneTapped), for: .touchUpInside)
        return view
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view .backgroundColor = .systemBackground
        view.addSubview(btnOne)
        
    }
    

    @objc func btnOneTapped(sender: UIButton){
       let vc = ThirdPageViewController()
        navigationController?.pushViewController(vc, animated: true
        )
    }
}

