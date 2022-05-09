//
//  ReviewDataView.swift
//  RegisterApp
//
//  Created by Marcela Menezes Silva on 25/04/22.
//

import UIKit

class ResumeView: ViewDefault {
    //MARK: Closures
    var onGoHome: (() -> Void )?
    
    //MARK: Variables
    let coordinatorViewModel: CoordinatorViewModel
    
    //MARK: Elements View
    var labelAge = LabelDefault(titleLabel: String.empty)
    
    var buttonHome = ButtonDefault(setTitle: "Home")
    
    init(withCoordinatorViewModel coordinatorViewModel: CoordinatorViewModel) {
        self.coordinatorViewModel = coordinatorViewModel

        super.init(frame: .zero)
        
        self.setElementsView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setElementsView() {
        setValuesInElementsViews()
        
        setLabelAge()
        setButtonHome()
    }
    
    private func setValuesInElementsViews() {
        labelAge.text = "Sua Faixa etária: \(self.coordinatorViewModel.personalDataViewModel?.age ?? String.empty)"
    }
    
    private func setLabelAge() {
        self.addSubview(labelAge)
        
        NSLayoutConstraint.activate([
            labelAge.topAnchor.constraint(equalTo: self.topAnchor, constant: 100),
            labelAge.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 24),
            labelAge.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -24),
            
        ])
    }
    
    private func setButtonHome() {
        self.addSubview(buttonHome)
        
        buttonHome.addTarget(self, action: #selector(buttonHomeTap), for: .touchUpInside)
        
        NSLayoutConstraint.activate([
            buttonHome.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -100),
            buttonHome.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 24),
            buttonHome.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -24),
            
        ])
    }
    
    @objc
    func buttonHomeTap() {
        onGoHome?()
    }
}


//class ReviewDataView: ViewDefault{
//    
//    // MARK: Closures
//    var onNextTap: (() -> Void)?
//    
//    lazy var titleLabel = LabelDefault(titleLabel: "Register ")
//    lazy var subTitleLabel = SubLabel(subLabel: " Data for review ")
//    lazy var nextButton: ButtonDefault = {
//        let bt = ButtonDefault(setTitle: "Salvar")
//        bt.backgroundColor = .buttonBackgroundColor
//        bt.addTarget(self, action: #selector(nextButtonTap), for: .touchUpInside)
//        return bt
//    }()
//    
//    override init(frame: CGRect) {
//        super.init(frame: frame)
//        backgroundColor = .white
//        
//        setUIElements()
//    }
//    @objc private func nextButtonTap() {
//        onNextTap?()
//        print("Hey")
//    }
//    
//    
//    required init?(coder: NSCoder) {
//        fatalError("init(coder:) has not been implemented")
//        
//    }
//    
//}
//
//import SwiftUI
//import UIViewCanvas
//
//struct MyPreview: PreviewProvider {
//    static var previews: some View {
//        ViewCanvas(for: ReviewDataView())
//    }
//}

