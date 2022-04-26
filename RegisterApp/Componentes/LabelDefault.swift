//
//  TitleLabel.swift
//  RegisterApp
//
//  Created by Marcela Menezes Silva on 18/04/22.
//

import UIKit

class LabelDefault: UILabel {
    init(titleLabel: String){
        super.init(frame: .zero)
        initDefault(titleLabel: titleLabel)
    }
    
    private func initDefault(titleLabel: String) {
        self.translatesAutoresizingMaskIntoConstraints = false
        self.textColor = .black
        self.font = UIFont.systemFont(ofSize: 40)
        self.text = titleLabel
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}

class SubLabel: UILabel{
    init(subLabel: String){
        super.init(frame: .zero)
        initDefault(subLabel: subLabel)
    }
    
    private func initDefault(subLabel: String) {
        self.translatesAutoresizingMaskIntoConstraints = false
        self.textColor = .black
        self.font = UIFont.systemFont(ofSize: 20)
        self.text = subLabel
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}

class IdadeLabel: UILabel {
    init(idadeLabel: String){
        super.init(frame: .zero)
        initDefault(idadeLabel: idadeLabel)
    }
    
    private func initDefault(idadeLabel: String) {
        self.translatesAutoresizingMaskIntoConstraints = false
        self.textColor = .black
        self.font = UIFont.systemFont(ofSize: 17)
        self.text = idadeLabel
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}

class CPFLabel: UILabel {
    init(cpfLabel: String){
        super.init(frame: .zero)
        initDefault(cpfLabel: cpfLabel)
    }
    
    private func initDefault(cpfLabel: String) {
        self.translatesAutoresizingMaskIntoConstraints = false
        self.textColor = .black
        self.font = UIFont.systemFont(ofSize: 17)
        self.text = cpfLabel
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}

class TelefoneLabel: UILabel {
    init(telefoneLabel: String){
        super.init(frame: .zero)
        initDefault(telefoneLabel: telefoneLabel)
    }
    
    private func initDefault(telefoneLabel: String) {
        self.translatesAutoresizingMaskIntoConstraints = false
        self.textColor = .black
        self.font = UIFont.systemFont(ofSize: 17)
        self.text = telefoneLabel
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}

class NumeroLabel: UILabel {
    init(numeroLabel: String){
        super.init(frame: .zero)
        initDefault(numeroLabel: numeroLabel)
    }
    
    private func initDefault(numeroLabel: String) {
        self.translatesAutoresizingMaskIntoConstraints = false
        self.textColor = .black
        self.font = UIFont.systemFont(ofSize: 17)
        self.text = numeroLabel
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}

class BairroLabel: UILabel {
    init(bairroLabel: String){
        super.init(frame: .zero)
        initDefault(bairroLabel: bairroLabel)
    }
    
    private func initDefault(bairroLabel: String) {
        self.translatesAutoresizingMaskIntoConstraints = false
        self.textColor = .black
        self.font = UIFont.systemFont(ofSize: 17)
        self.text = bairroLabel
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}

class CepLabel: UILabel {
    init(cepLabel: String){
        super.init(frame: .zero)
        initDefault(cepLabel: cepLabel)
    }
    
    private func initDefault(cepLabel: String) {
        self.translatesAutoresizingMaskIntoConstraints = false
        self.textColor = .black
        self.font = UIFont.systemFont(ofSize: 17)
        self.text = cepLabel
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}

class CidadeLabel: UILabel {
    init(cidadeLabel: String){
        super.init(frame: .zero)
        initDefault(cidadeLabel: cidadeLabel)
    }
    
    private func initDefault(cidadeLabel: String) {
        self.translatesAutoresizingMaskIntoConstraints = false
        self.textColor = .black
        self.font = UIFont.systemFont(ofSize: 17)
        self.text = cidadeLabel
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}

class EstadoLabel: UILabel {
    init(estadoLabel: String){
        super.init(frame: .zero)
        initDefault(estadoLabel: estadoLabel)
    }
    
    private func initDefault(estadoLabel: String) {
        self.translatesAutoresizingMaskIntoConstraints = false
        self.textColor = .black
        self.font = UIFont.systemFont(ofSize: 17)
        self.text = estadoLabel
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}

class DadosLabel: UILabel {
    init(dadosLabel: String){
        super.init(frame: .zero)
        initDefault(dadosLabel: dadosLabel)
    }
    
    private func initDefault(dadosLabel: String) {
        self.translatesAutoresizingMaskIntoConstraints = false
        self.textColor = .black
        self.font = UIFont.systemFont(ofSize: 17)
        self.text = dadosLabel
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}

class LogoImage: UIImageView {
    init(logoImage: String){
        super.init(frame: .zero)
        initDefault(logoImage: logoImage)
    }
    private func initDefault(logoImage: String) {
        self.translatesAutoresizingMaskIntoConstraints = false
        self.image = UIImage(named: "verde")
        
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
