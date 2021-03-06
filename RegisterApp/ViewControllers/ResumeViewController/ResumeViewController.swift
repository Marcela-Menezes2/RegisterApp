//
//  ReviewDataVC.swift
//  RegisterApp
//
//  Created by Marcela Menezes Silva on 25/04/22.
//

import Foundation
import UIKit

class ResumeViewController: UIViewController {
    //MARK: Closures
    var onGoHome: (() -> Void )?
    
    //MARK: Variables
    var coordinatorViewModel: CoordinatorViewModel?
    
    //MARK: Elements Views
    lazy var resumeView: ResumeView = {
        let coordinatorViewModel = self.coordinatorViewModel ?? CoordinatorViewModel()
        let view = ResumeView(withCoordinatorViewModel: coordinatorViewModel)
        
        view.onGoHome = {
            self.onGoHome?()
        }
        
        return view
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func setProfileViewModel(coordinatorViewModel: CoordinatorViewModel) {
        self.coordinatorViewModel = coordinatorViewModel
    }
    
    override func loadView() {
        self.view = resumeView
    }
}


//    override func viewDidAppear(_ animated: Bool) {
//        self.navigationController?.setNavigationBarHidden(true, animated: false)
//    }

