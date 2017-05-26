//
//  Meme.swift
//  MemeMe 2.0
//
//  Created by joel johnson on 5/25/17.
//  Copyright © 2017 joel johnson. All rights reserved.
//

import Foundation
import UIKit

struct Meme{
    
    var topTextField: String
    var bottomTextField: String
    var image: UIImage
    var meme: UIImage
    
    init(topText: String, bottomText: String, image: UIImage, meme: UIImage){
        topTextField = topText
        bottomTextField = bottomText
        self.image = image
        self.meme = meme
    }
}
