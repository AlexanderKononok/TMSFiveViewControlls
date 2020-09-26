//
//  ThirdViewController.swift
//  FiveControlls
//
//  Created by Alexander Kononok on 9/26/20.
//

import UIKit

class ThirdViewController: UIViewController {
  
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
    let fourthViewController = storyboard.instantiateViewController(identifier: String(describing: FourthViewController.self)) as! FourthViewController
    
    fourthViewController.modalPresentationStyle = .fullScreen
    self.present(fourthViewController, animated: true)
    
    fourthViewController.myText = myText
    show(fourthViewController, sender: nil)
  }
  
}
