//
//  SecondViewController.swift
//  FiveControlls
//
//  Created by Alexander Kononok on 9/26/20.
//

import UIKit

class SecondViewController: UIViewController {
  
  @IBOutlet weak var inputTextField: UILabel!
  
  var myText = ""
  
  override func viewDidLoad() {
    super.viewDidLoad()
  }
  
//  override func viewWillAppear(_ animated: Bool) {
//    inputTextField.text = myText
//  }
  
  @IBAction func showNextViewControllerButtonPressed(_ sender: Any) {
    let storyboard = UIStoryboard(name: "Main", bundle: nil)
    let thirdViewController = storyboard.instantiateViewController(identifier: String(describing: ThirdViewController.self)) as! ThirdViewController
    
//    thirdViewController.modalPresentationStyle = .fullScreen
//    self.present(thirdViewController, animated: true)
    
    thirdViewController.myText = myText
//    show(thirdViewController, sender: nil)
    navigationController?.pushViewController(thirdViewController, animated: true)
  }
  
}
