//
//  BaseView.swift
//  IminProject
//
//  Created by 한성봉 on 2/13/24.
//

import UIKit

class BaseView: UIView {
    override init(frame: CGRect) {
        super.init(frame: frame)
        configureHierarchy()
        configureConstraints()
        backgroundColor = .white
    }
    
    @available(*, unavailable)
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func configureHierarchy() { }
    
    func configureConstraints() { }
}
