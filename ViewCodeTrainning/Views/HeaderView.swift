//
//  HeaderView.swift
//  ViewCodeTrainning
//
//  Created by isabel.isaura.l.lima on 16/01/2019.
//  Copyright © 2019 thiago.lioy. All rights reserved.
//

import UIKit
import SnapKit

class HeaderView: UIView {
    
    let imageView: UIImageView = {
        let image = UIImageView()
        image.backgroundColor = .yellow
        return image
    }()
    
    let textGrid: UIStackView = {
        let stack = UIStackView(frame: .zero)
        stack.axis = .vertical
        stack.distribution = .fillEqually
        stack.spacing = 8
        return stack
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
    
    let buttonsGrid: UIStackView = {
        let stack = UIStackView(frame: .zero)
        stack.axis = .horizontal
        stack.distribution = .fillEqually
        stack.spacing = 8
        return stack
    }()
    
    let leftButton: UILabel = {
        let button = UILabel(frame: .zero)
        button.backgroundColor = .cyan
        return button
    }()
    
    let rightButton: UILabel = {
        let button = UILabel(frame: .zero)
        button.backgroundColor = .magenta
        return button
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
}


extension HeaderView: ViewCode {
    func setupHierarchy() {
        addSubview(imageView)
        textGrid.addArrangedSubview(header)
        textGrid.addArrangedSubview(subHeader)
        addSubview(textGrid)
        buttonsGrid.addArrangedSubview(leftButton)
        buttonsGrid.addArrangedSubview(rightButton)
        addSubview(buttonsGrid)
        
    }
    
    func addConstraints() {
        
        self.imageView.snp.makeConstraints { make in
            make.top.bottom.left.equalToSuperview()
            make.width.equalTo(120)
        }
        
        self.textGrid.snp.makeConstraints { make in
            make.top.right.equalToSuperview()
            make.left.equalTo(imageView.snp.right).offset(10)
            make.height.equalToSuperview().multipliedBy(0.7)
        }
        
        self.buttonsGrid.snp.makeConstraints { make in
            make.left.equalTo(imageView.snp.right).offset(10)
            make.bottom.right.equalToSuperview()
            make.top.equalTo(textGrid.snp.bottom).offset(10)
        }
    }
    
}
