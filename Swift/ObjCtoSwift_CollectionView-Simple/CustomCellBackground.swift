//
//  CustomCellBackground.swift
//  ObjCtoSwift_CollectionView-Simple
//
//  Created by d on 2015/07/14.
//  Copyright (c) 2015年 d. All rights reserved.
//

import UIKit

class CustomCellBackground: UIView {
    
    override func drawRect(rect : CGRect) {
        
        // draw a rounded rect bezier path filled with blue
        let aRef: CGContextRef = UIGraphicsGetCurrentContext()
        CGContextSaveGState(aRef)
        
        let bezierPath = UIBezierPath(roundedRect: rect, cornerRadius: 5.0)
        bezierPath.lineWidth = 5.0
        UIColor.blackColor().setStroke()
        
        let fillColor = UIColor(red: 0.529, green: 0.808, blue: 0.922, alpha: 1) // color equivalent is #87ceeb
        fillColor.setFill()
        
        bezierPath.stroke()
        bezierPath.fill()
        CGContextRestoreGState(aRef)
    }

}
