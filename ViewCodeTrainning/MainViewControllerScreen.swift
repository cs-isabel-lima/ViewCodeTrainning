//
//  MainViewControllerView.swift
//  ViewCodeTrainning
//
//  Created by isabel.isaura.l.lima on 16/01/2019.
//  Copyright © 2019 thiago.lioy. All rights reserved.
//

import UIKit
import SnapKit

class MainViewControllerScreen: UIView {
    
    let headerView = HeaderView()
    
    private let gridContainer: UIStackView = {
        let stack = UIStackView(frame: .zero)
        stack.axis = .horizontal
        stack.distribution = .fillEqually
        stack.spacing = 10
        return stack
    }()
    
    let leftGrid = GridBoxView()
    let rightGrid = GridBoxView()
    
    let fetchButton: UIButton = {
        let button = UIButton()
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
        addSubview(headerView)
        gridContainer.addArrangedSubview(leftGrid)
        gridContainer.addArrangedSubview(rightGrid)
        addSubview(gridContainer)
    }
    
    func addConstraints() {
        self.fetchButton.snp.makeConstraints { make in
            make.bottom.equalTo(safeAreaLayoutGuide.snp.bottom)
            make.left.equalToSuperview().offset(20)
            make.right.equalToSuperview().inset(20)
        }
        
        self.headerView.snp.makeConstraints { make in
            make.top.equalTo(safeAreaLayoutGuide.snp.top).offset(30)
            make.leading.equalToSuperview().offset(20)
            make.trailing.equalToSuperview().inset(20)
            make.height.equalTo(120)
        }
        
        self.gridContainer.snp.makeConstraints { make in
            make.left.equalToSuperview().offset(20)
            make.right.equalToSuperview().inset(20)
            make.height.equalTo(320)
            make.centerY.equalToSuperview()
        }
    }

}
