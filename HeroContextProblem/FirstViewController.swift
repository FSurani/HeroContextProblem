//
//  FirstViewController.swift
//  HeroContextProblem
//
//  Copyright © 2018 Example. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {
    @IBOutlet weak var whiteView: UIView!
    
    @objc static func storyboardInstance() -> UIViewController? {
        let storyboard = UIStoryboard(name:"Entry", bundle: nil)
        let vc:UIViewController? = storyboard.instantiateViewController(withIdentifier: "FirstViewController")
        vc?.modalPresentationStyle = .overCurrentContext
        return vc
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        whiteView.hero.id = "bkg"
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
