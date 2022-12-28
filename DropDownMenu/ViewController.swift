//
//  ViewController.swift
//  DropDownMenu
//
//  Created by Peiyun on 2022/12/28.
//

import UIKit

class ViewController: UIViewController {
    

    
    @IBOutlet var options: [UIButton]!
    
    
    @IBAction func optionPressed(_ sender: UIButton) {
    
        
    }
    
    //game的按鈕
    @IBAction func startSelect(_ sender: UIButton) {
        
        for option in options{
            option.isHidden = !option.isHidden
        }
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

