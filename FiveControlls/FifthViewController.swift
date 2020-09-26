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
  
}
