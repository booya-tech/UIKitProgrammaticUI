//
//  TextFieldsViewController.swift
//  UIKitProgrammaticUI
//
//  Created by Panachai Sulsaksakul on 4/21/25.
//

import UIKit

class TextFieldsViewController: UIViewController {
    private lazy var textField: UITextField = {
        let textField = UITextField()
        textField.placeholder = "Enter text here..."
        textField.borderStyle = .roundedRect
        textField.keyboardType = .emailAddress
        textField.font = UIFont.systemFont(ofSize: 14)
        textField.returnKeyType = .search
        textField.delegate = self
        textField.addTarget(self, action: #selector(onEditingChanged), for: .editingChanged)
        
        return textField
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        view.addSubview(textField)
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        textField.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        textField.widthAnchor.constraint(equalToConstant: view.frame.width - 64).isActive = true
    }
    
    @objc func onEditingChanged(_ sender: UITextField) {
        print("DEBUG: Text field text is \(sender.text)")
    }
}

extension TextFieldsViewController: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        print("DEBUG: Return key tapped...")
        textField.resignFirstResponder()
        
        return true
    }
    
    func textFieldDidBeginEditing(_ textField: UITextField) {
        print("DEBUG: Did begin editing...")
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        print("DEBUG: Did end editing...")
    }
}

#Preview {
    TextFieldsViewController()
}
