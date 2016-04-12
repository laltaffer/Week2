//
//  TutorialViewController.swift
//  Carousel
//
//  Created by Altaffer, Lawrence on 4/11/16.
//  Copyright © 2016 lawrence. All rights reserved.
//

import UIKit

class TutorialViewController: UIViewController, UIScrollViewDelegate{

    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var pageDots: UIPageControl!
    @IBOutlet weak var spinButton: UIImageView!
    @IBOutlet weak var buttonParent: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        //set scroll view size
        scrollView.contentSize = CGSize(width: 1280, height: 568)
        scrollView.delegate = self
        pageDots.numberOfPages = 4
        buttonParent.alpha = 0
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func scrollViewDidEndDecelerating(scrollView: UIScrollView) {
        
        let page : Int = Int(round(scrollView.contentOffset.x / 320))
        
        // Set the current page
        pageDots.currentPage = page
        
        if pageDots.currentPage == 3 {
            pageDots.hidden = true
            //animate in button
            delay(0.5, closure: { () -> () in
                UIView.animateWithDuration(0.3, animations: {
                    self.buttonParent.alpha = 1
                })
            })
        }else{
            //show nav and hide button
            pageDots.hidden = false
            UIView.animateWithDuration(0.1, animations: {
                self.buttonParent.alpha = 0
            })
        }

    }

    @IBAction func spinButtonAction(sender: UIButton) {
        
        performSegueWithIdentifier("timelineSegue", sender: nil)
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
