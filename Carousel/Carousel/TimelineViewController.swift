//
//  TimelineViewController.swift
//  Carousel
//
//  Created by Altaffer, Lawrence on 4/11/16.
//  Copyright © 2016 lawrence. All rights reserved.
//

import UIKit

class TimelineViewController: UIViewController {
    @IBOutlet weak var timelineNav: UIImageView!
    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var scrubberNav: UIImageView!
    @IBOutlet weak var timelineImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        //set scrollview size to fit the image
        scrollView.contentSize = timelineImage.image!.size
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func settingsButton(sender: UIButton) {
        performSegueWithIdentifier("settingsSegue", sender: nil)
        
    }

    @IBAction func conversationsButton(sender: UIButton) {
        performSegueWithIdentifier("conversationsSegue", sender: nil)
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
