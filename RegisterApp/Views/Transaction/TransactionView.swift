//
//  HomeView.swift
//  RegisterApp
//
//  Created by Marcela Menezes Silva on 09/05/22.
//

import Foundation
import UIKit

class TransactionView: ViewDefault {
    
    lazy var titleLabel = LabelDefault(titleLabel: "Meus gastos ")
    lazy var subTitle = SubLabel(subLabel: " R$ 3000,00")
    lazy var descriptionLabel = userLabel(idadeLabel: " Entradas esse mês")
    lazy var textTitle = SubLabel(subLabel: " R$ 180,00")
    lazy var descriptLabel = userLabel(idadeLabel: " Saídas esse mês")
    
    
    lazy var iconButton: ButtonDefault = {
        let bt = ButtonDefault(setTitle: "")
        bt.setImage(UIImage(systemName: "plus.circle"), for: .normal)
        bt.backgroundColor = .white
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
        view.layer.cornerRadius = 25
        return view
    }()
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .white
        
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
