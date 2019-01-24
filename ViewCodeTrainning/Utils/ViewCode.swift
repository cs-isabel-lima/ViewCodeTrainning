//
//  ViewCode.swift
//  ViewCodeTrainning
//
//  Created by isabel.isaura.l.lima on 16/01/2019.
//  Copyright © 2019 thiago.lioy. All rights reserved.
//

import Foundation

protocol ViewCode {
    func setupHierarchy()
    func addConstraints()
    func additionalConfiguration()
    func setupView()
}

extension ViewCode {
    
    func setupView() {
        setupHierarchy()
        addConstraints()
        additionalConfiguration()
    }
    
    func additionalConfiguration() {}
}
