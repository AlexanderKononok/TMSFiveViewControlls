//
//  FourthViewController.swift
//  FiveControlls
//
//  Created by Alexander Kononok on 9/26/20.
//

import UIKit

class FourthViewController: UIViewController {
  
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
    let fifthViewController = storyboard.instantiateViewController(identifier: String(describing: FifthViewController.self)) as! FifthViewController
    
    fifthViewController.modalPresentationStyle = .fullScreen
    self.present(fifthViewController, animated: true)
    
    fifthViewController.myText = myText
    show(fifthViewController, sender: nil)
  }
  
}
