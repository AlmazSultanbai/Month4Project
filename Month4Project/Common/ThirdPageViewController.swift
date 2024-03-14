//
//  ThirdViewController.swift
//  Month4Project
//
//  Created by Sultanbai Almaz on 10/3/24.
//

import UIKit

class ThirdPageViewController: UIViewController {
    
    
    private lazy var bntRoot: UIButton = {
        let view = UIButton(frame: CGRect(x: 100, y: 100, width: 90, height: 40))
        view.addTarget(self, action: #selector(btnRootTapped(sender:)), for: .touchUpInside)
        view.setTitle("return to Root", for: .normal)
        view.setTitleColor(.blue, for: .normal)
        view.backgroundColor = .green
        view.layer.cornerRadius = 12
        
        
        return view
    }()
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        view.addSubview(bntRoot)
        
    }
    
    @objc func btnRootTapped (sender: UIButton){
        
        navigationController?.popViewController(animated: true)
        
    }
    
    
}
