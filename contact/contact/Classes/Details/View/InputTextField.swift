//
//  InputTextField.swift
//  contact
//
//  Created by Siti Norain Ishak on 20/06/2021.
//

import UIKit

class InputTextField: UITextField {
    var isValid: Bool = false {
        didSet {
            configureView()
        }
    }
    
    var hasResigned: Bool = false {
        didSet {
            configureView()
        }
    }
  
    override func resignFirstResponder() -> Bool {
        hasResigned = true
        return super.resignFirstResponder()
    }
  
    private func configureView() {
        textColor = isValid ? R.color.fontColor()! : .red
  }
}
