//
//  ProfileHeaderView.swift
//  Navigation
//
//  Created by Mac on 12.10.2022.
//

import UIKit

class ProfileHeaderView: UIView {
    
    let statusLabel: UILabel = {
        let statusLabel = UILabel()
        let labelframe = CGRect(x: 173, y: 1, width: 100, height: 100)
        statusLabel.frame = labelframe
        statusLabel.text = "Status"
        statusLabel.numberOfLines = 1
        statusLabel.textColor = .black
        statusLabel.font = UIFont.boldSystemFont(ofSize: 10)
        
        return statusLabel
    }()
    
    let fullNameLabel: UILabel = {
        let fullNameLabel = UILabel()
        fullNameLabel.text = "Full Name"
        fullNameLabel.numberOfLines = 2
        fullNameLabel.textColor = .black
        fullNameLabel.font = UIFont.boldSystemFont(ofSize: 15)
        fullNameLabel.translatesAutoresizingMaskIntoConstraints = false
        
        return fullNameLabel
    }()
    
    let avatarImageView: UIImageView = {
        var avatarDog = UIImageView()
        let image = UIImage (named: "IMG_3105")
        avatarDog.contentMode = .scaleAspectFit
        avatarDog.tintColor = .green
        avatarDog.backgroundColor = .clear
        avatarDog.image = image
        avatarDog.frame.size.width = 80
        avatarDog.frame.size.height = 80
        avatarDog.layer.cornerRadius = avatarDog.frame.size.width / 2
        avatarDog.clipsToBounds = true
        avatarDog.layer.borderColor = UIColor.white.cgColor
        avatarDog.layer.borderWidth = 6
        avatarDog.translatesAutoresizingMaskIntoConstraints = false
        
        return avatarDog
    }()
    
    let setStatusButton: UIButton = {
        var setStatusButton = UIButton()
        setStatusButton = UIButton(type: .roundedRect)
        setStatusButton.setTitle("Set Status", for: .normal)
        setStatusButton.setTitleColor(UIColor.white, for: .normal)
        setStatusButton.backgroundColor = .systemBlue
        setStatusButton.layer.cornerRadius = 14
        setStatusButton.backgroundColor = UIColor.systemBlue
        setStatusButton.layer.shadowRadius = 6
        setStatusButton.translatesAutoresizingMaskIntoConstraints = false
        
        return setStatusButton
    }()
    
    let statusTextField: UITextField = {
        let textField = UITextField()
        textField.placeholder = "Text"
        textField.layer.borderColor = UIColor.black.cgColor
        textField.layer.borderWidth = 2
        textField.layer.cornerRadius = 6
        textField.translatesAutoresizingMaskIntoConstraints = false
        
        return textField
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        translatesAutoresizingMaskIntoConstraints = false
        layout()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init (coder:) has not been implemented")
    }
    
    func layout(){
        self.addSubview(setStatusButton)
        self.addSubview(fullNameLabel)
        self.addSubview(avatarImageView)
        self.addSubview(statusLabel)
        self.addSubview(statusTextField)
        addTarget()
        addTapGesture()
        
        NSLayoutConstraint.activate([setStatusButton.topAnchor.constraint(equalTo: self.topAnchor, constant: 100), setStatusButton.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 20), setStatusButton.widthAnchor.constraint(equalToConstant: 50), setStatusButton.heightAnchor.constraint(equalToConstant: 50)])
       
        NSLayoutConstraint.activate([statusLabel.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor), statusLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 70), statusLabel.widthAnchor.constraint(equalToConstant: 50), statusLabel.heightAnchor.constraint(equalToConstant: 50)])
        
        NSLayoutConstraint.activate([fullNameLabel.topAnchor.constraint(equalTo: self.topAnchor, constant: 50), fullNameLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: 100), fullNameLabel.widthAnchor.constraint(equalToConstant: 50), fullNameLabel.heightAnchor.constraint(equalToConstant: 50)])
        
        NSLayoutConstraint.activate([avatarImageView.topAnchor.constraint(equalTo: self.topAnchor, constant: 90), avatarImageView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 0), avatarImageView.widthAnchor.constraint(equalToConstant: 20), avatarImageView.heightAnchor.constraint(equalToConstant: 30)])
        
        NSLayoutConstraint.activate([statusTextField.topAnchor.constraint(equalTo: self.topAnchor, constant: 30), statusTextField.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: 20), statusTextField.widthAnchor.constraint(equalToConstant: 50), statusTextField.heightAnchor.constraint(equalToConstant: 50)])
    }
    private var statusTextT: String = ""
    
    func addTapGesture() {
        setStatusButton.addTarget(self, action: #selector(buttonPressed), for: .touchUpInside)
        setStatusButton.isUserInteractionEnabled = true
    }
    
    @objc
    func buttonPressed() {
        print("")
    }
    
    func addTarget() {
        statusTextField.addTarget(self, action: #selector(statusTextChanged(_:)), for: .editingChanged)
        statusTextField.isUserInteractionEnabled = true
    }
    
    @objc func statusTextChanged(_ textField: UITextField){
        statusTextT = textField.text ?? ""
    }
}

