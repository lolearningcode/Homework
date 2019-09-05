//
//  ThirdViewController.swift
//  Task1
//
//  Created by Lo Howard on 8/29/19.
//  Copyright © 2019 Lo Howard. All rights reserved.
//

import UIKit

class ThirdViewController: UIViewController {
    
    @IBOutlet weak var ageTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let tapGesture = UITapGestureRecognizer()
        tapGesture.addTarget(self, action: #selector(toMainVC))
        view.addGestureRecognizer(tapGesture)
//        notificationHandled()
        // Do any additional setup after loading the view.
    }
    
    @objc func toMainVC() {
        notificationHandled()
        dismiss(animated: true, completion: nil)
    }
    
    func notificationHandled() {
        guard let age = ageTextField.text else { return }
        let userInfo: [String: Any] = ["age" : age]
        NotificationCenter.default.post(name: NSNotification.Name("Age"), object: ThirdViewController.self, userInfo: userInfo)
    }
}
