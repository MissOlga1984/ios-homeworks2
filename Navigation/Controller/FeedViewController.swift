//
//  FeedViewController.swift
//  Navigation
//
//  Created by Mac on 16.09.2022.
//

import UIKit

class FeedViewController: UIViewController {
    var dataSource = Post (title: "Some Title")
    
    private let button: UIButton = {
        let button = UIButton()
        button.setTitle("Post", for: .normal)
        button.setTitleColor(UIColor.black, for: .normal)
        button.backgroundColor = .red
        button.layer.cornerRadius = 14
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }
    func setupUI() {
        setupConstraints()
        addTargets()
        view.backgroundColor = .yellow
    }
    func addTargets() {
        button.addTarget(self, action: #selector(showDetailController), for: .touchUpInside)
    }
    func setupConstraints() {
        view.addSubview(button)
        
        NSLayoutConstraint.activate([
            button.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            button.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])
    }
    @objc func showDetailController() {
        let postViewController = PostViewController ()
        navigationController?.pushViewController(postViewController, animated: true)
    }
}
