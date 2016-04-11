//
//  LoginViewController.swift
//  Carousel
//
//  Created by Altaffer, Lawrence on 4/11/16.
//  Copyright © 2016 lawrence. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController, UIScrollViewDelegate {

    @IBOutlet weak var loginScrollView: UIScrollView!
    
    @IBOutlet weak var fieldParent: UIView!
    @IBOutlet weak var emailField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    
    @IBOutlet weak var buttonParent: UIView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        //set scroll view size
        loginScrollView.contentSize = loginScrollView.frame.size
        loginScrollView.contentInset.bottom = 100
        
        loginScrollView.delegate = self
        

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func keyboardWillShow(notification: NSNotification!){
        
    }
    func keyboardWillHide(notification: NSNotification!){
        
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
