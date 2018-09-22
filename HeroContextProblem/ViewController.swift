//
//  ViewController.swift
//  HeroContextProblem
//
//  Copyright © 2018 Example. All rights reserved.
//

import UIKit
import Hero

class ViewController: UIViewController {

    var firstVC:UIViewController?
    var secondVC:UIViewController?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    
    @IBAction func clickedButton(_ sender: Any) {
       firstVC = FirstViewController.storyboardInstance()
       firstVC?.hero.isEnabled = true
        self.tabBarController?.present(firstVC!, animated: true, completion: nil)
        
        (DispatchQueue.main.asyncAfter(deadline: .now() + 2, execute: {
            self.secondVC = SecondViewController()
            let nv:UINavigationController = UINavigationController(rootViewController: self.secondVC!)
            self.firstVC!.hero.replaceViewController(with: nv)
        }))
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

class SecondViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .white
        self.view.hero.id = "bkg"
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 2, execute: {
            self.dismiss(animated: true, completion: nil)
        })
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}

