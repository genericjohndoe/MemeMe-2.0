//
//  MemeTextDelegate.swift
//  MemeMe 2.0
//
//  Created by joel johnson on 5/27/17.
//  Copyright © 2017 joel johnson. All rights reserved.
//

import Foundation
import UIKit

class MemeTextDelegate: NSObject, UITextFieldDelegate {
    
    func textFieldDidBeginEditing(_ textField: UITextField) {
        textField.text = ""
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true;
    }
    
}
