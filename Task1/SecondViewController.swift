//
//  SecondViewController.swift
//  Task1
//
//  Created by Lo Howard on 8/29/19.
//  Copyright © 2019 Lo Howard. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var textLabel: UILabel!
    
    var displayedText = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let tapGesture = UITapGestureRecognizer()
        tapGesture.addTarget(self, action: #selector(toMainVC))
        view.addGestureRecognizer(tapGesture)
        // Do any additional setup after loading the view.
        textLabel.text = displayedText
    
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
