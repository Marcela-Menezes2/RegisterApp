//
//  ReviewDataVC.swift
//  RegisterApp
//
//  Created by Marcela Menezes Silva on 25/04/22.
//

import UIKit

class ReviewDataVC: UIViewController {
    
    var onNextTap: (() -> Void)?
    
    lazy var reviewDataView: ReviewDataView = {
        let view = ReviewDataView()
        
        
        view.onNextTap = {
            self.onNextTap?()
        }
        return view
    }()
    
    override func loadView() {
        self.view = self.reviewDataView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "Register"
    }
    
//    override func viewDidAppear(_ animated: Bool) {
//        self.navigationController?.setNavigationBarHidden(true, animated: false)
//    }
}
