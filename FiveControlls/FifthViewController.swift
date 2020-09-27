//
//  FifthViewController.swift
//  FiveControlls
//
//  Created by Alexander Kononok on 9/26/20.
//

import UIKit

class FifthViewController: UIViewController {
  
  @IBOutlet weak var inputTextField: UILabel!
  
  var myText = ""
  
  override func viewDidLoad() {
    super.viewDidLoad()
  }
  
  override func viewWillAppear(_ animated: Bool) {
    inputTextField.text = myText
  }
  
  @IBAction func showFirstViewControllerButtonPressed(_ sender: Any) {
//    let storyboard = UIStoryboard(name: "Main", bundle: nil)
//    let firstViewController = storyboard.instantiateViewController(identifier: String(describing: ViewController.self)) as! ViewController
//    firstViewController.modalPresentationStyle = .fullScreen
//    self.present(firstViewController, animated: true)
    navigationController?.popToRootViewController(animated: true)
  }
  
}
