//
//  DetailVC.swift
//  代理传值
//
//  Created by 徐开源 on 16/5/17.
//  Copyright © 2016年 徐开源. All rights reserved.
//

import UIKit


class DetailVC: UIViewController {
    
    @IBOutlet weak var textField: UITextField!
    var delegate: PassDataDelegate!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    // MARK: - Pass Data
    @IBAction func goBackLastController(sender: AnyObject) {
        if delegate != nil {
            guard let txt = textField.text else { return }
            delegate.setControllerTitle(txt)
        }
        navigationController?.popViewControllerAnimated(true)
    }
    
}
