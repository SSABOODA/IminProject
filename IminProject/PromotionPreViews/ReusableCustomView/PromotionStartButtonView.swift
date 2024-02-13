//
//  PromotionStartButton.swift
//  IminProject
//
//  Created by 한성봉 on 2/13/24.
//

import UIKit

final class PromotionStartButtonView: BaseView {
    private let laterStartButton = {
        let _button = UIButton()
        _button.setTitle("나중에 할게요", for: .normal)
        _button.setTitleColor(.black, for: .normal) // 수정
        return _button
    }()
    
    private let nowStartButton = {
        let _button = UIButton()
        _button.setTitle("홍보 시작하기", for: .normal)
        _button.setTitleColor(.white, for: .normal) // 수정
        _button.backgroundColor = .systemPurple // 수정
        return _button
    }()
    
    let screenWidth = UIScreen.main.bounds.width
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        nowStartButton.addTarget(self, action: #selector(abc), for: .touchUpInside)
    }
    
    @objc func abc() {
        print(123)
    }
    
    override func configureHierarchy() {
        addSubview(laterStartButton)
        addSubview(nowStartButton)
    }
    
    override func configureConstraints() {
        laterStartButton.snp.makeConstraints {
            $0.width.equalTo(screenWidth/2)
            $0.top.bottom.leading.equalToSuperview()
        }

        nowStartButton.snp.makeConstraints {
            $0.width.equalTo(screenWidth/2)
            $0.top.trailing.bottom.equalToSuperview()
        }
    }
}
