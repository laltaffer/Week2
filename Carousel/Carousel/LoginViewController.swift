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
    @IBOutlet weak var loginNavBar: UIImageView!
    @IBOutlet weak var fieldParent: UIView!
    @IBOutlet weak var emailField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    
    @IBOutlet weak var buttonParent: UIView!
    @IBOutlet weak var loginButton: UIButton!
    @IBOutlet weak var loginIndicator: UIActivityIndicatorView!
    
    var buttonInitialY: CGFloat!
    var buttonOffset: CGFloat!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        //set scroll view size
        loginScrollView.contentSize = loginScrollView.frame.size
        loginScrollView.contentInset.bottom = 100
        
        loginScrollView.delegate = self
        
        buttonInitialY = buttonParent.frame.origin.y
        buttonOffset = -120
        
        NSNotificationCenter.defaultCenter().addObserver(self, selector: #selector(keyboardWillShow(_:)), name:UIKeyboardWillShowNotification, object: nil)
        NSNotificationCenter.defaultCenter().addObserver(self, selector: #selector(keyboardWillHide(_:)), name:UIKeyboardWillHideNotification, object: nil)

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func keyboardWillShow(notification: NSNotification!){
        print("KB up")
        
        //Move the button up
        buttonParent.frame.origin.y = buttonInitialY + buttonOffset
        //Scroll the scrollview
        loginScrollView.contentOffset.y = loginScrollView.contentInset.bottom
    }
    
    func keyboardWillHide(notification: NSNotification!) {
        print("KB down")
        
        // Move back down to it's original position
        loginScrollView.contentOffset.y = loginScrollView.contentInset.top
        buttonParent.frame.origin.y = buttonInitialY
    }

    @IBAction func loginButtonAction(sender: UIButton) {
        
        
        loginButton.selected = true
        
        if emailField.text == "user" && passwordField.text == "pass" {
            loginIndicator.startAnimating()
            let signingIn = UIAlertController(title: "Signing in... ", message: nil, preferredStyle: .Alert)
            presentViewController(signingIn, animated: true) {
            }

            delay(1, closure: {
                signingIn.dismissViewControllerAnimated(true, completion: {
                    
                })
                self.loginIndicator.stopAnimating()
                self.loginButton.selected = false
                self.performSegueWithIdentifier("tutorialSegue", sender: nil)
                
            })
            
        } else if emailField.text!.isEmpty {
            let alertController = UIAlertController(title: "Email is Required", message: "Please enter your email", preferredStyle: .Alert)
            let cancelAction = UIAlertAction(title: "OK", style: .Cancel) { (action) in}
            alertController.addAction(cancelAction)
            
            delay(2, closure: { () -> () in
                self.loginIndicator.stopAnimating()
                self.loginButton.selected = false
            })
            presentViewController(alertController, animated: true) {
            }
        } else if passwordField.text!.isEmpty {
           
            let alertController = UIAlertController(title: "Password Required", message: "Please enter your password", preferredStyle: .Alert)
            let cancelAction = UIAlertAction(title: "OK", style: .Cancel) { (action) in
                
            }
            alertController.addAction(cancelAction)
            
            delay(2, closure: {
                self.loginIndicator.stopAnimating()
                self.loginButton.selected = false
            })
            presentViewController(alertController, animated: true) {
            }
        }else {
            let alertController = UIAlertController(title: "Username or Password Incorrrect", message: "Please enter your credentials", preferredStyle: .Alert)
            let cancelAction = UIAlertAction(title: "OK", style: .Cancel) { (action) in
                
            }
            alertController.addAction(cancelAction)
            
            delay(2, closure: { () -> () in
                self.loginIndicator.stopAnimating()
                self.loginButton.selected = false
            })
            presentViewController(alertController, animated: true) {
            }
        }
    }
    
    

}
