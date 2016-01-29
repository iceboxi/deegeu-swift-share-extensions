//
//  RedViewController.swift
//  deegeu-swift-share-extensions
//
//  Created by Daniel Spiess on 10/23/15.
//  Copyright © 2015 Daniel Spiess. All rights reserved.
//

import UIKit
import Photos

class RedViewController: UIViewController {
    @IBOutlet weak var imageView: UIImageView!
    let suiteName = "group.iceboxi.AShareExtenion"
    let redDefaultKey = "RedColorImage"
    
    // Simply reads the selected image from NSUserDefaults and displays the
    // image
    override func viewDidLoad() {
        super.viewDidLoad()
        if let prefs = NSUserDefaults(suiteName: suiteName) {
//            print(prefs.dictionaryRepresentation())
            if let imageData = prefs.objectForKey(redDefaultKey) as? NSData {
                dispatch_async(dispatch_get_main_queue(), { () -> Void in
                    self.imageView.image = UIImage(data: imageData)
                })
            }
        }
    }
}
