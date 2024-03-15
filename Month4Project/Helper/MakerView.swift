//
//  File.swift
//  Month4Project
//
//  Created by Sultanbai Almaz on 15/3/24.
//

import UIKit

class MakerView {
    
    func makeLabel  ( text: String = "",
                      textColor: UIColor = .white,
                      textSize: CGFloat = 20,
                      textWeight: UIFont.Weight = .regular,
                      textAlignement: NSTextAlignment = .left,
                      numberOfLines: Int = 0,
                      linearBreakMode: NSLineBreakMode = .byWordWrapping) -> UILabel{
        let view = UILabel()
        view.text = text
        view.textColor = textColor
        view.textAlignment = textAlignement
        view.numberOfLines = numberOfLines
        view.lineBreakMode = linearBreakMode
        view.font = .systemFont(ofSize: textSize, weight: textWeight)
        return view
    }
    func makeTF(textColor: UIColor = .black,
                placeholder: String = "",
                borderColor: CGColor = UIColor.white.cgColor,
                cornerRadius: CGFloat = 0,
                borderWith: CGFloat = 0,
                keyboardType: UIKeyboardType = .default,
                leftViewMode: UITextField.ViewMode = .always) -> UITextField {
        let view = UITextField()
        let viewTf = UIView(frame: CGRect(x: 0, y: 0, width: 8, height: 4))
        view.leftView = viewTf
        view.leftViewMode = leftViewMode
        view.textColor = textColor
        view.placeholder = placeholder
        view.layer.borderColor = borderColor
        view.layer.cornerRadius = cornerRadius
        view.layer.borderWidth = borderWith
        view.keyboardType = keyboardType
        return view
    }
}
