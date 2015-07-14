//
//  ViewController.swift
//  ObjCtoSwift_CollectionView-Simple
//
//  Created by d on 2015/07/13.
//  Copyright (c) 2015年 d. All rights reserved.
//

import UIKit

class ViewController: UICollectionViewController {

    let kDetailedViewControllerID = "DetailView"    // view controller storyboard id
    let kCellID = "cellID"                          // UICollectionViewCell storyboard id

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    override func collectionView(view: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 32
    }
    
    override func collectionView(cv: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        
        // we're going to use a custom UICollectionViewCell, which will hold an image and its label
        let cell = cv.dequeueReusableCellWithReuseIdentifier(kCellID, forIndexPath: indexPath) as! Cell
        
        // make the cell's title the actual NSIndexPath value
        cell.label!.text = String(format: "{%ld,%ld}", arguments: [indexPath.row, indexPath.section])
        
        // load the image for this cell
        let imageToLoad = String(format: "%ld", indexPath.row)
        cell.image!.image = UIImage(named: imageToLoad)
        
        return cell
    }
    
    // the user tapped a collection item, load and set the image on the detail view controller
    func prepareForSegue(segue: UIStoryboardSegue, _ sender: AnyObject) {
        if segue.identifier == "showDetail" {
            let selectedIndexPath: NSIndexPath = self.collectionView!.indexPathsForSelectedItems()[0] as! NSIndexPath
            
            // load the image, to prevent it from being cached we use 'initWithContentsOfFile'
            let imageNameToLoad = String(format: "%ld_full", selectedIndexPath.row)
            let image = UIImage(named: imageNameToLoad)
            let detailViewController = segue.destinationViewController as! DetailViewController
            detailViewController.image = image
        }
    }
}

