//
//  LabelsTutorialViewController.swift
//  UIKitProgrammaticUI
//
//  Created by Panachai Sulsaksakul on 4/18/25.
//

import UIKit

class LabelsTutorialViewController: UIViewController {

    private var textLabel = UILabel()
    private var subTitleLabel: UILabel = {
        let label = UILabel()
        label.text = "This is a subtitle"
        label.textColor = .gray
        
        return label
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        view.backgroundColor = .gray
        textLabel.text = "Hello, World!"
        textLabel.font = UIFont.systemFont(ofSize: 20)
        
        view.addSubview(textLabel)
        textLabel.translatesAutoresizingMaskIntoConstraints = false // // enable Auto Layout
        textLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        textLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        
        subTitleLabel.translatesAutoresizingMaskIntoConstraints = false
        subTitleLabel.topAnchor.constraint(equalTo: textLabel.bottomAnchor, constant: 10).isActive = true
        subTitleLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
    }
}

#Preview {
    LabelsTutorialViewController()
}
