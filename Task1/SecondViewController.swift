//
//  SecondViewController.swift
//  Task1
//
//  Created by Lo Howard on 8/29/19.
//  Copyright © 2019 Lo Howard. All rights reserved.
//

import UIKit

protocol NameLabelDelegate: class {
    func addName(to label: String)
}

class SecondViewController: UIViewController {

    @IBOutlet weak var nameTextField: UITextField!
    
    var displayedText = ""
    weak var delegate: NameLabelDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let tapGesture = UITapGestureRecognizer()
        tapGesture.addTarget(self, action: #selector(toMainVC))
        view.addGestureRecognizer(tapGesture)
        // Do any additional setup after loading the view.
//        nameTextField.text = displayedText
    
    }
    
    @objc func toMainVC() {
        guard let name = nameTextField.text else { return }
        delegate?.addName(to: name)
        dismiss(animated: true, completion: nil)
    }

    
}
