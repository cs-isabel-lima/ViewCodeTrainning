//
//  MainViewControllerView.swift
//  ViewCodeTrainning
//
//  Created by isabel.isaura.l.lima on 16/01/2019.
//  Copyright © 2019 thiago.lioy. All rights reserved.
//

import UIKit

class MainViewControllerScreen: UIView {
    
    let fetchButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.backgroundColor = .red
        button.setTitle("Fetch", for: .normal)
        return button
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .gray
        setupView()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
}

extension MainViewControllerScreen: ViewCode {
    func setupHierarchy() {
        addSubview(fetchButton)
    }
    
    func addConstraints() {
        NSLayoutConstraint.activate([
            self.fetchButton.bottomAnchor.constraint(equalTo: self.safeAreaLayoutGuide.bottomAnchor, constant: -20),
            self.fetchButton.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 20),
            self.fetchButton.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -20)
            ])
    }
    
    
}
