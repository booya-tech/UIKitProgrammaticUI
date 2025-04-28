//
//  ShapesTutorialViewController.swift
//  UIKitProgrammaticUI
//
//  Created by Panachai Sulsaksakul on 4/21/25.
//

import UIKit

class ShapesTutorialViewController: UIViewController {
    private var rect: UIView = {
        let view = UIView()
        view.layer.cornerRadius = 16
        view.backgroundColor = .systemRed
        
        return view
    }()
    
    private var circle: UIView = {
        let view = UIView()
        view.layer.cornerRadius = 100 / 2
        view.backgroundColor = .systemBlue
        
        return view
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        view.addSubview(rect)
        rect.translatesAutoresizingMaskIntoConstraints = false
        rect.widthAnchor.constraint(equalToConstant: 100).isActive = true
        rect.heightAnchor.constraint(equalToConstant: 100).isActive = true
        rect.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        rect.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        
        view.addSubview(circle)
        circle.translatesAutoresizingMaskIntoConstraints = false
        circle.topAnchor.constraint(equalTo: rect.bottomAnchor, constant: 16).isActive = true
        circle.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        circle.widthAnchor.constraint(equalToConstant: 100).isActive = true
        circle.heightAnchor.constraint(equalToConstant: 100).isActive = true
    }
}

#Preview {
    ShapesTutorialViewController()
}
