//
//  ProfileViewController.swift
//  Navigation
//
//  Created by Mac on 12.10.2022.
//

import UIKit

class ProfileViewController: UIViewController {
    
    var profileHeaderView = ProfileHeaderView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemPink
        view.addSubview(profileHeaderView)
        setupConstraints()
        
    }
    
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        view.addSubview(profileHeaderView)
    }

    func setupConstraints(){
        view.addSubview(profileHeaderView)
        
        NSLayoutConstraint.activate([profileHeaderView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor), profileHeaderView.leadingAnchor.constraint(equalTo: view.leadingAnchor,constant:0), profileHeaderView.trailingAnchor.constraint(equalTo: view.trailingAnchor,constant:0), profileHeaderView.heightAnchor.constraint(equalToConstant: 220)])
    }
}

