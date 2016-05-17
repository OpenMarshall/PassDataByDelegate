//
//  MasterVC.swift
//  代理传值
//
//  Created by 徐开源 on 16/5/17.
//  Copyright © 2016年 徐开源. All rights reserved.
//

import UIKit

class MasterVC: UIViewController, PassDataDelegate {
    
    @IBOutlet weak var textField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    // MARK: - Pass Data
    @IBAction func goNextController(sender: AnyObject) {
        guard let vc = storyboard?.instantiateViewControllerWithIdentifier("DetailVC")
            as? DetailVC else { return }
        guard let txt = textField.text else { return }
        vc.title = txt // pass data
        vc.delegate = self // get data by set delegate
        navigationController?.pushViewController(vc, animated: true)
    }
    

    // MARK: - PassDataDelegate Method
    func setControllerTitle(text:String) {
        title = text
    }

}

