//
//  InfoViewController.swift
//  Navigation
//
//  Created by Mac on 16.09.2022.
//

import UIKit

class InfoViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        button1()
        view.backgroundColor = .yellow
    }
    
    func button1(){
        var button = UIButton()
        button = UIButton(type: .roundedRect)
        let fr = CGRect(x: 115, y: 300, width: 200, height: 50)
        button.frame = fr
        button.setTitle("INFO", for: .normal)
        button.setTitleColor(UIColor.black, for: .normal)
        button.backgroundColor = .green
        button.layer.cornerRadius = 20
        button.addTarget(self, action: #selector(addtarget), for: .touchDown)
        self.view.addSubview(button)
    }
    
    @objc func addtarget(){
        let alert = UIAlertController(title: "Title", message: "Message", preferredStyle: .alert)
        
        let ok = UIAlertAction(title: "OK", style: .cancel, handler: { action in
            print ("message")
        })
        alert.addAction(ok)
        let close = UIAlertAction(title: "CLOSE", style: .destructive, handler: nil)
        alert.addAction(close)
        present(alert, animated: true, completion: nil)
    }
}

