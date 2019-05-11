//
//  DetailsViewController.swift
//  MemeMe
//
//  Created by Haya Mousa on 10/05/2019.
//  Copyright © 2019 Udacity. All rights reserved.
//

import UIKit

class DetailsViewController: UIViewController {
    
    var meme: Meme!


    @IBOutlet weak var theImage: UIImageView!
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.theImage!.image = meme.memedImage

    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    

}
