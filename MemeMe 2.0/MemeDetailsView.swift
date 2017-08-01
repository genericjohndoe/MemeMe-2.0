//
//  MemeDetailsView.swift
//  MemeMe 2.0
//
//  Created by joel johnson on 7/30/17.
//  Copyright © 2017 joel johnson. All rights reserved.
//

import Foundation
import UIKit

class MemeDetailsView: UIViewController {
    
    var meme: Meme!
    
    @IBOutlet weak var memeImage: UIImageView!
    
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.tabBarController?.tabBar.isHidden = true
        memeImage!.image = meme.meme
        memeImage!.contentMode = .scaleAspectFit
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        self.tabBarController?.tabBar.isHidden = false
    }
    
    
    @IBAction func share(_ sender: Any) {
        let controller = UIActivityViewController(activityItems: [meme.meme], applicationActivities: nil)
        controller.completionWithItemsHandler = { (activityType: UIActivityType?, completed: Bool, returnedItems: [Any]?, error: Error?) -> Void in
            if completed == true {
                self.dismiss(animated: true, completion: nil)
            }
        }
        present(controller, animated: true, completion: nil)
    }
}
