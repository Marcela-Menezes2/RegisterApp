//
//  ReviewDataView.swift
//  RegisterApp
//
//  Created by Marcela Menezes Silva on 25/04/22.
//

import UIKit

class ReviewDataView: ViewDefault{
    
    // MARK: Closures
    var onNextTap: (() -> Void)?
    
    lazy var titleLabel = LabelDefault(titleLabel: "Register ")
    lazy var subTitleLabel = SubLabel(subLabel: " Data for review ")
    lazy var nextButton: ButtonDefault = {
        let bt = ButtonDefault(setTitle: "Salvar")
        bt.backgroundColor = .buttonBackgroundColor
        bt.addTarget(self, action: #selector(nextButtonTap), for: .touchUpInside)
        return bt
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .white
        
        setUIElements()
    }
    @objc private func nextButtonTap() {
        onNextTap?()
        print("Hey")
    }
    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
        
    }
    
}
//
//import SwiftUI
//import UIViewCanvas
//
//struct MyPreview: PreviewProvider {
//    static var previews: some View {
//        ViewCanvas(for: ReviewDataView())
//    }
//}

