//
//  StorePromotionPreviewController.swift
//  IminProject
//
//  Created by 한성봉 on 2/13/24.
//

import UIKit
import RxSwift


final class StorePromotionPreview: BaseView {
    private let navagationView = {
        let _view = UIView()
        return _view
    }()
    private let profileRegisterSuccessNoticeLabel = {
        let _label = UILabel()
        _label.text = "상점 프로필 등록이 완료되었어요.\n피드에 지금 바로 홍보해 보시겠어요?"
        _label.numberOfLines = 2
        _label.font = .boldSystemFont(ofSize: 16) // 수정
        _label.textColor = .lightGray // 수정
//        _label.font = .regular16
//        _label.textColor = .gray400
        return _label
    }()
    private let promotionPreviewTitleLabel = {
        let _label = UILabel()
        _label.text = "홍보 미리보기"
        _label.font = .boldSystemFont(ofSize: 16) // 수정
        _label.textColor = .black // 수정
//        _label.textColor = .primaryBlack // 수정
//        _label.font = .medium16 // 수정
        return _label
    }()
    private let storePromotionProfileView = {
        let _view = StorePromotionProfleView()
        return _view
    }()
    private let warningTitleLabel = {
        let _label = UILabel()
        _label.text = "유의사항"
        _label.textColor = .black // 수정
        _label.font = .boldSystemFont(ofSize: 16)
        return _label
    }()
    private lazy var warningLabel = {
        let _label = UILabel()
        _label.text = self.getWarningText()
        _label.numberOfLines = 0
        _label.textColor = .gray // 수정
        _label.font = .boldSystemFont(ofSize: 14) // 수정
        return _label
    }()
    private let promotionStartButtonView = {
        let _view = PromotionStartButtonView()
        return _view
    }()
    
    private let nowStartButtonBackView = {
        let _view = UIView()
        _view.backgroundColor = .systemPurple
        return _view
    }()
    
    private func getWarningText() -> String {
        let text =
        """
        \u{2022} 불법, 도박 등 불건전 홍보 및 상점 프로필은 사전 고지
           없이 삭제됩니다.
        \u{2022} 스테이지 관련 홍보는 불가합니다.
        \u{2022} 홍보를 시작하면 피드에서 노출됩니다.
        \u{2022} 진행중인 홍보는 언제든지 중지할 수 있습니다.
        \u{2022} 무료로 이용 가능한 상점 홍보는 플랫폼 정책에 따라 유료로
           변경될 수 있습니다.
        """
        return text
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    override func configureHierarchy() {
        addSubview(navagationView)
        addSubview(profileRegisterSuccessNoticeLabel)
        addSubview(promotionPreviewTitleLabel)
        addSubview(storePromotionProfileView)
        addSubview(warningTitleLabel)
        addSubview(warningLabel)
        addSubview(nowStartButtonBackView)
        addSubview(promotionStartButtonView)
    }
    
    override func configureConstraints() {
        navagationView.backgroundColor = .orange
        navagationView.snp.makeConstraints {
            $0.top.equalTo(safeAreaLayoutGuide)
            $0.horizontalEdges.equalToSuperview()
            $0.height.equalTo(56)
        }
        
        profileRegisterSuccessNoticeLabel.snp.makeConstraints {
            $0.top.equalTo(navagationView.snp.bottom).offset(24)
            $0.leading.equalToSuperview().inset(20)
        }
        
        promotionPreviewTitleLabel.snp.makeConstraints {
            $0.top.equalTo(profileRegisterSuccessNoticeLabel.snp.bottom).offset(24)
            $0.leading.equalToSuperview().inset(20)
        }
        
        storePromotionProfileView.snp.makeConstraints {
            $0.top.equalTo(promotionPreviewTitleLabel.snp.bottom).offset(16)
            $0.horizontalEdges.equalToSuperview().inset(20)
            $0.height.equalTo(208)
        }
        
        warningTitleLabel.snp.makeConstraints {
            $0.top.equalTo(storePromotionProfileView.snp.bottom).offset(40)
            $0.leading.equalToSuperview().inset(20)
        }
        
        warningLabel.snp.makeConstraints {
            $0.top.equalTo(warningTitleLabel.snp.bottom).offset(16)
            $0.horizontalEdges.equalToSuperview().inset(20)
        }
        
        promotionStartButtonView.snp.makeConstraints {
            $0.horizontalEdges.equalToSuperview()
            $0.height.equalTo(60)
            $0.bottom.equalTo(safeAreaLayoutGuide)
        }
        
        nowStartButtonBackView.snp.makeConstraints {
            $0.top.equalTo(promotionStartButtonView.snp.top)
            $0.width.equalTo(UIScreen.main.bounds.width/2)
            $0.trailing.bottom.equalToSuperview()
        }
    }
    
}


final class StorePromotionPreviewController: BaseViewController {
    private let storePromotionPreview = StorePromotionPreview()
    private var disposeBag = DisposeBag()
    
    override func loadView() {
        view = storePromotionPreview
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print(#function)
    }
    
    override func configureHirarchy() {
        
    }
    
    override func configureConstraints() {
        
    }
}
