//
//  StorePromotionProfleView.swift
//  IminProject
//
//  Created by 한성봉 on 2/13/24.
//

import UIKit
import SnapKit

final class StorePromotionProfleView: BaseView {
    private let layoutView = {
        let _view = UIView()
        _view.layer.borderWidth = 1
        _view.layer.borderColor = UIColor.lightGray.cgColor // 수정
        _view.layer.cornerRadius = 16
        return _view
    }()
    private let storeProfileImageView = {
        let _view = UIImageView()
        _view.image = UIImage(named: "img_profile_level_1")
        return _view
    }()
    private let storeProfileTitleLabel = {
        let _label = UILabel()
        _label.text = "레드배틀의 상점"
        _label.font = .boldSystemFont(ofSize: 15) // 수정
        _label.textColor = .black // 수정
        return _label
    }()
    private let storeIntroduceImageView = {
        let _view = UIImageView()
        _view.image = UIImage(named: "pexels-lumn-1410235 1")
        _view.layer.cornerRadius = 16
        _view.clipsToBounds = true
        return _view
    }()
    private let storeProfileNicknameLabel = {
        let _label = UILabel()
        _label.text = "cafe imin"
        _label.font = .boldSystemFont(ofSize: 16)  // 수정
        _label.textColor = .black // 수정
        return _label
    }()
    private let storeIntroduceLabel = {
        let _label = UILabel()
        _label.text = "상점소개글이 출력됩니다.\n최대 3줄까지 가능하고, \n50글자 전체가 출력됩니다."
        _label.numberOfLines = 3
        _label.textColor = .gray
        return _label
    }()
    private let detailButtonView = {
        let _view = UIView()
        return _view
    }()
    private let detailViewButtonLabel = {
        let _label = UILabel()
        _label.text = "자세히 보기"
        _label.textColor = .lightGray // 수정
        _label.font = .boldSystemFont(ofSize: 12) // 수정
        return _label
    }()
    private let detailViewButtonImage = {
        let _view = UIImageView()
        _view.image = UIImage(systemName: "chevron.right")
        _view.tintColor = .gray
        return _view
    }()
    
    override func configureHierarchy() {
        addSubview(layoutView)
        addSubview(storeProfileImageView)
        addSubview(storeProfileTitleLabel)
        addSubview(storeIntroduceImageView)
        addSubview(storeProfileNicknameLabel)
        addSubview(storeIntroduceLabel)
        
        addSubview(detailButtonView)
        detailButtonView.addSubview(detailViewButtonLabel)
        detailButtonView.addSubview(detailViewButtonImage)
        
    }
    
    override func configureConstraints() {
        layoutView.snp.makeConstraints {
            $0.edges.equalToSuperview()
        }
        
        storeProfileImageView.snp.makeConstraints {
            $0.size.equalTo(42)
            $0.top.left.equalToSuperview().inset(16)
        }
        
        storeProfileTitleLabel.snp.makeConstraints {
            $0.centerY.equalTo(storeProfileImageView.snp.centerY)
            $0.leading.equalTo(storeProfileImageView.snp.trailing).offset(8)
            $0.height.equalTo(18)
        }
        
        storeIntroduceImageView.snp.makeConstraints {
            $0.size.equalTo(88)
            $0.leading.equalToSuperview().inset(16)
            $0.top.equalTo(storeProfileImageView.snp.bottom).offset(16)
        }
        
        storeProfileNicknameLabel.snp.makeConstraints {
            $0.top.equalTo(storeIntroduceImageView.snp.top)
            $0.leading.equalTo(storeIntroduceImageView.snp.trailing).offset(16)
        }
        
        storeIntroduceLabel.snp.makeConstraints {
            $0.top.equalTo(storeProfileNicknameLabel.snp.bottom).offset(5)
            $0.leading.equalTo(storeIntroduceImageView.snp.trailing).offset(16)
        }
        
        // 자세히 보기 Button View
        detailButtonView.snp.makeConstraints {
            $0.trailing.bottom.equalToSuperview().inset(8)
            $0.height.equalTo(30)
            $0.width.equalTo(87)
        }
        
        detailViewButtonLabel.snp.makeConstraints {
            $0.top.leading.bottom.equalToSuperview().inset(8)
        }
        
        detailViewButtonImage.snp.makeConstraints {
            $0.verticalEdges.equalToSuperview().inset(9)
            $0.trailing.equalToSuperview().inset(8)
        }
    }
    
}
