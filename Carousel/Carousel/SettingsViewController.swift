//
//  SettingsViewController.swift
//  Carousel
//
//  Created by Altaffer, Lawrence on 4/11/16.
//  Copyright © 2016 lawrence. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {

    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var settingsImage: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()

        //set scrollview size to fit the image
        scrollView.contentSize = settingsImage.image!.size
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func backButtonAction(sender: UIButton) {
        dismissViewControllerAnimated(true, completion: nil)
    }

    @IBAction func signOutButton(sender: UIButton) {
        performSegueWithIdentifier("signOutSegue", sender: nil)
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
