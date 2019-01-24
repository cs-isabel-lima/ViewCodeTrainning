//
//  GridBoxView.swift
//  ViewCodeTrainning
//
//  Created by isabel.isaura.l.lima on 24/01/2019.
//  Copyright © 2019 thiago.lioy. All rights reserved.
//

import UIKit
import SnapKit

class GridBoxView: UIView {
    
    let gridBox: UIStackView = {
        let stack = UIStackView(frame: .zero)
        stack.axis = .vertical
        stack.distribution = .fillEqually
        stack.spacing = 10
        return stack
    }()
    
    let image: UIImageView = {
        let image = UIImageView(frame: .zero)
        image.backgroundColor = .green
        return image
    }()
    
    let header: UILabel = {
        let label = UILabel(frame: .zero)
        label.backgroundColor = .orange
        return label
    }()
    
    let subHeader: UILabel = {
        let label = UILabel(frame: .zero)
        label.backgroundColor = .green
        return label
    }()
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}

extension GridBoxView: ViewCode {
    func setupHierarchy() {
        addSubview(image)
        gridBox.addArrangedSubview(header)
        gridBox.addArrangedSubview(subHeader)
        addSubview(gridBox)
    }
    
    func addConstraints() {
        
        image.snp.makeConstraints { make in
            make.top.left.right.equalToSuperview()
            make.height.equalToSuperview().multipliedBy(0.6)
        }
        
        gridBox.snp.makeConstraints { make in
            make.top.equalTo(image.snp.bottom).offset(10)
            make.right.left.equalToSuperview()
            make.height.equalToSuperview().multipliedBy(0.4)
        }
        
    }
    
    
}

