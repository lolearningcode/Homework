//
//  ViewController.swift
//  Task1
//
//  Created by Lo Howard on 8/29/19.
//  Copyright © 2019 Lo Howard. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var ageLabel: UILabel!
    @IBOutlet weak var secondVC: UIButton!
    @IBOutlet weak var thirdVC: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
       notificationHandled()
        
    }
    
    func notificationHandled() {
        NotificationCenter.default.addObserver(forName: NSNotification.Name("Age"), object: ThirdViewController.self, queue: .main) { [weak self] (note) in
            
            guard let userInfo = note.userInfo as? [String: Any],
                let age = userInfo["age"] as? String else { return }
            self?.ageLabel.text = age
        }
        
    }

    @IBAction func secondVCButton(_ sender: UIButton) {
        performSegue(withIdentifier: "toSecondVC", sender: nil)
    }
    
    @IBAction func thirdVCButton(_ sender: Any) {
        guard let thirdStoryboard = storyboard?.instantiateViewController(withIdentifier: "ThirdViewController") else { return }
        
        present(thirdStoryboard, animated: true, completion: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toSecondVC" {
            let secondVC = segue.destination as! SecondViewController
            secondVC.delegate = self
//            secondVC.displayedText = textField.text ?? ""
        }
    }
    
//    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
//
//        let allowedChars = NSCharacterSet(charactersIn: "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789").inverted
//        secondVC.isHidden = false
//        thirdVC.isHidden = false
//        return string.rangeOfCharacter(from: allowedChars) == nil
//    }
}

extension ViewController: NameLabelDelegate {
    func addName(to label: String) {
        nameLabel.text = label
    }
    
    
}
