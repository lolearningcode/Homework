//
//  ThirdViewController.swift
//  Task1
//
//  Created by Lo Howard on 8/29/19.
//  Copyright © 2019 Lo Howard. All rights reserved.
//

import UIKit

class ThirdViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let tapGesture = UITapGestureRecognizer()
        tapGesture.addTarget(self, action: #selector(toMainVC))
        view.addGestureRecognizer(tapGesture)
        // Do any additional setup after loading the view.
    }
    
    @objc func toMainVC() {
        dismiss(animated: true, completion: nil)
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
