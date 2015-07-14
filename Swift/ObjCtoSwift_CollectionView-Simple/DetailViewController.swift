//
//  DetailViewController.swift
//  ObjCtoSwift_CollectionView-Simple
//
//  Created by d on 2015/07/14.
//  Copyright (c) 2015年 d. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    
    var image: UIImage?
    
    @IBOutlet weak var imageView: UIImageView?
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        self.imageView!.image = self.image
    }
}
