//
//  PostViewController.swift
//  Navigation
//
//  Created by Mac on 16.09.2022.
//

import UIKit

class PostViewController: UIViewController {
    
    override func loadView() {
        super.loadView()
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .purple
        setupUI()
    }
    
    func setupUI() {
        let subView = UIView(frame: CGRect(x: 50, y: 100, width: 200, height: 200))
        subView.backgroundColor = .cyan
        view.addSubview(subView)
        setupBarButtonItem()
        setupConstraints()
        titleLabel.text = dataSource.title
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
    }
    
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
    }
    
    deinit {
    }

    var dataSource = Post (title: "Some Title")
    
    private let titleLabel: UILabel = {
        let label = UILabel()
        label.text = "First Text"
        label.textColor = .black
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    func setupConstraints() {
        view.addSubview(titleLabel)
        
        NSLayoutConstraint.activate([
            titleLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 50),
            titleLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        ])
    }
    @objc func showDetailController() {
        let postViewController = PostViewController ()
        navigationController?.pushViewController(postViewController, animated: true)
    }
    func setupBarButtonItem(){
        let baritem = UIBarButtonItem (image: UIImage (systemName: "folder"), style: .plain, target: self, action: #selector(addTarget))
        self.navigationItem.rightBarButtonItem = baritem
    }
    @objc func addTarget() {
        let infoViewController = InfoViewController ()
        navigationController?.pushViewController(infoViewController, animated: true)
    }
}

