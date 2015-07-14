//
//  Cell.swift
//  ObjCtoSwift_CollectionView-Simple
//
//  Created by d on 2015/07/14.
//  Copyright (c) 2015年 d. All rights reserved.
//

import UIKit

class Cell: UICollectionViewCell {
    
    @IBOutlet weak var image: UIImageView?
    @IBOutlet weak var label: UILabel?
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
        // change to our custom selected background view
        let backgroundView = CustomCellBackground(frame: CGRectZero)
        self.selectedBackgroundView = backgroundView
    }
}
