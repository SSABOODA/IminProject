//
//  ViewController.swift
//  IminProject
//
//  Created by 한성봉 on 2/13/24.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let vc = StorePromotionPreviewController()
        vc.modalPresentationStyle = .fullScreen
        self.present(vc, animated: true)
    }


}

