//
//  TitleLabel.swift
//  RegisterApp
//
//  Created by Marcela Menezes Silva on 18/04/22.
//

    import UIKit

    class RegisterLabel: UITextField {
            init(titleLabel: String){
                super.init(frame: .zero)
                initDefault(titleLabel: titleLabel)
            }
           
            private func initDefault(titleLabel: String) {
               self.translatesAutoresizingMaskIntoConstraints = false
               self.textColor = .white
               self.font = UIFont.systemFont(ofSize: 40)
               self.text = "Register"
                
           }

            
            required init?(coder: NSCoder) {
                fatalError("init(coder:) has not been implemented")
            }
            
    }

    class SubLabel: UITextField {
            init(subLabel: String){
                super.init(frame: .zero)
                initDefault(subLabel: subLabel)
            }
           
            private func initDefault(subLabel: String) {
               self.translatesAutoresizingMaskIntoConstraints = false
               self.textColor = .white
               self.font = UIFont.systemFont(ofSize: 20)
               self.text = "Login data"
                
           }

            
            required init?(coder: NSCoder) {
                fatalError("init(coder:) has not been implemented")
            }
            
    }

