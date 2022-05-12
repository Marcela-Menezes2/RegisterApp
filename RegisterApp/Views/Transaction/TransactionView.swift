//
//  HomeView.swift
//  RegisterApp
//
//  Created by Marcela Menezes Silva on 09/05/22.
//

import Foundation
import UIKit

class TransactionView: ViewDefault {
    // MARK: Constraints
    let space: CGFloat = (20 / 375) *  UIScreen.main.bounds.width
    let width: CGFloat = (157 / 375) * UIScreen.main.bounds.width
    let cellId = "TransactionTableViewCell"
    
    // MARK: Propertys
    let transactionsViewModel: [TransactionViewModel]?

    // MARK: Visual Elements
    lazy var titleLabel = LabelDefaultt(titleLabel: "Meus gastos ")
    lazy var subTitle = SubLabel(subLabel: " R$ 3000,00")
    lazy var descriptionLabel = userLabel(idadeLabel: " Entradas esse mês")
    lazy var textTitle = SubLabel(subLabel: " R$ 180,00")
    lazy var descriptLabel = userLabel(idadeLabel: " Saídas esse mês")
    
    
    lazy var iconButton: ButtonDefault = {
        let bt = ButtonDefault(title: "")
        bt.setImage(UIImage(systemName: "plus"), for: .normal)
        bt.backgroundColor = .viewBackgroundColor
        bt.translatesAutoresizingMaskIntoConstraints = false
        bt.tintColor = .greenColor
        //        bt.addTarget(self, action: #selector(buscaCEPButtonTAP), for: .touchUpInside)
        
        return bt
    }()
    lazy var segmentedControl: UISegmentedControl = {
        let mySegmentControl = UISegmentedControl(items: ["Essa semana", "Esse mês", "Todos"])
        mySegmentControl.selectedSegmentIndex = 1
        mySegmentControl.backgroundColor = .grayColor
        mySegmentControl.layer.cornerRadius = 60 / 2
        mySegmentControl.translatesAutoresizingMaskIntoConstraints = false
        return mySegmentControl
    }()
    
    lazy var inputsView: ViewInputOutput = {
        let view = ViewInputOutput(typeEntry: .Input)
        view.setValue(value: 111113500)
        view.layer.cornerRadius = 25
        return view
    }()
    
    lazy var outputsView: ViewInputOutput = {
        let view = ViewInputOutput(typeEntry: .Output)
        view.setValue(value: 562312)
        view.layer.cornerRadius = (width * 10) / 100
        return view
    }()
    
    lazy var trasactionsTableView: UITableView = {
        let tv = UITableView(frame: .zero, style: .plain)
        tv.translatesAutoresizingMaskIntoConstraints = false
        tv.backgroundColor = .lightGray
        tv.delegate = self
        tv.dataSource = self
        tv.register(TransactionTableViewCell.self, forCellReuseIdentifier: self.cellId)
        tv.accessibilityLabel = "Lista de transações do período"
        
        tv.backgroundColor = .viewBackgroundColor
        
        return tv
    }()

    override init(frame: CGRect) {
        self.transactionsViewModel = TransactionViewModel(withModel: TransactionModel()).getMock()
        
        super.init(frame: frame)
        
        self.scrollView.isScrollEnabled = false
        self.setUIElements()
        self.trasactionsTableView.reloadData()
        
        self.setUIElements()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

//import SwiftUI
//import UIViewCanvas
//
//struct MyPreview: PreviewProvider {
//    static var previews: some View {
//        ViewCanvas(for: TransactionView())
//    }
//}
//
//
