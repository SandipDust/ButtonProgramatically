//
//  ViewController.swift
//  Button_ProgrammaticUI
//
//  Created by Sandip Das on 22/09/21.
//

import UIKit

class ViewController: UIViewController {
    
    let textLabel = UILabel()
    let button = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        view.backgroundColor = .white
        configureTextLabel()
        configureButton()
        addConstraints()
        
        
    }
    
    func configureTextLabel(){
        view.addSubview(textLabel)
        textLabel.text = "Press the button"
        textLabel.translatesAutoresizingMaskIntoConstraints = false
        textLabel.font = UIFont.systemFont(ofSize: 36)
        textLabel.adjustsFontSizeToFitWidth = true
        textLabel.numberOfLines = 0
        textLabel.textAlignment = .center
    }
    
    func configureButton(){
        view.addSubview(button)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Click this button", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.backgroundColor = .blue
        button.layer.cornerRadius = 10
        button.addTarget(self, action: #selector(buttonPressed), for: .touchUpInside)
    }
    
    
    private func addConstraints(){
        var constraint = [NSLayoutConstraint]()
        
        //add constraints
        constraint.append(textLabel.bottomAnchor.constraint(equalTo: button.topAnchor, constant: -40))
        constraint.append(textLabel.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 20))
        constraint.append(textLabel.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -20))
        
        constraint.append(button.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor))
        constraint.append(button.centerYAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerYAnchor))
        constraint.append(button.widthAnchor.constraint(equalToConstant: 300))
        constraint.append(button.heightAnchor.constraint(equalToConstant: 100))
        
        
        
        //activate constraint
        NSLayoutConstraint.activate(constraint)
    }
    
    @objc func buttonPressed(){
        textLabel.text = "Dont press that button ever again!"
        button.backgroundColor = .gray
    }


}

