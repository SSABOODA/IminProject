//
//  StorePromotionPreviewController.swift
//  IminProject
//
//  Created by 한성봉 on 2/13/24.
//

import UIKit
import RxSwift

final class StorePromotionPreviewController: BaseViewController {
    private let storePromotionPreview = StorePromotionPreview()
    private var disposeBag = DisposeBag()
    
    override func loadView() {
        view = storePromotionPreview
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("폴더 이동")
        print("config")
    }
    
    override func configureHirarchy() {}
    
    override func configureConstraints() {}
}
