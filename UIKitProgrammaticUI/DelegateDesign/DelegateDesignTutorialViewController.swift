//
//  DelegateDesignTutorialViewController.swift
//  UIKitProgrammaticUI
//
//  Created by Panachai Sulsaksakul on 4/28/25.
//

import UIKit

class DelegateDesignTutorialViewController: UIViewController {

    private var actionButtonView = ActionButtonView()
    
    private var textLabel = UILabel()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .systemGroupedBackground
        
        actionButtonView.delegate = self
        
        view.addSubview(actionButtonView)
        actionButtonView.layer.shadowColor = UIColor.black.cgColor
        actionButtonView.translatesAutoresizingMaskIntoConstraints = false
        actionButtonView.heightAnchor.constraint(equalToConstant: 300).isActive = true
        actionButtonView.widthAnchor.constraint(equalToConstant: 300).isActive = true
        actionButtonView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        actionButtonView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        
        view.addSubview(textLabel)
        textLabel.translatesAutoresizingMaskIntoConstraints = false
        textLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        textLabel.topAnchor.constraint(equalTo: actionButtonView.bottomAnchor, constant: 16).isActive = true
        textLabel.text = "Primary Button Action Delegate"
        textLabel.isHidden = true
        
    }
}

extension DelegateDesignTutorialViewController: ActionButtonViewDelegate {
    func onTapPrimary() {
        print("DEBUG: Primary button tapped in view controller")
        textLabel.isHidden = false
    }
    
    func onTapSecondary() {
        print("DEBUG: Secondary button tapped in view controller")
        textLabel.isHidden = true
    }
    
    
}
