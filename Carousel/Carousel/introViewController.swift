//
//  introViewController.swift
//  Carousel
//
//  Created by Lawrence Altaffer IV on 4/5/16.
//  Copyright © 2016 lawrence. All rights reserved.
//

import UIKit

class introViewController: UIViewController {
    
    @IBOutlet var introScrollView: UIScrollView!
    @IBOutlet weak var introImage: UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
            //set scrollview size to fit the image
            introScrollView.contentSize = introImage.image!.size
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    @IBAction func signInButton(sender: AnyObject) {
        self.performSegueWithIdentifier("signInSegue", sender: self)
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
