//
//  CategoryViewController.swift
//  RegisterApp
//
//  Created by Marcela Menezes Silva on 10/05/22.
//

import Foundation

class CategoryViewController: ViewControllerDefault {
    // MARK: - Closures
    var onAddCategory:(()-> Void)?
    
    // MARK: - Properties
    private lazy var categoryView: CategoryView = {
        let view = CategoryView()
        view.onAddCategory = {
            self.onAddCategory?()
        }
        
        return view
    }()
    
    // MARK: Lifecyclie
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func loadView() {
        super.loadView()
        self.view = categoryView
    }
}
