//
//  ViewController.swift
//  FiveControlls
//
//  Created by Alexander Kononok on 9/26/20.
//

import UIKit

class ViewController: UIViewController {
  
  @IBOutlet weak var inputTextField: UITextField!
  
  override func viewDidLoad() {
    super.viewDidLoad()
  }
  
  @IBAction func showNextViewControllerButtonPressed(_ sender: Any) {
    let storyboard = UIStoryboard(name: "Main", bundle: nil)
    let secondViewController = storyboard.instantiateViewController(identifier: String(describing: SecondViewController.self)) as! SecondViewController
    
//    secondViewController.modalPresentationStyle = .fullScreen
//    self.present(secondViewController, animated: true)
    
    secondViewController.myText = inputTextField.text!
//    show(secondViewController, sender: nil)
    navigationController?.pushViewController(secondViewController, animated: true)
  }
  
}

