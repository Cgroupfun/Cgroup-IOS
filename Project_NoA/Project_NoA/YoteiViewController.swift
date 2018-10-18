//
//  YoteiViewController.swift
//  Project_NoA
//
//  Created by かーくん on 2018/10/12.
//  Copyright © 2018 加藤景也. All rights reserved.
//

import UIKit

class YoteiViewController: UIViewController {
    
    @IBOutlet weak var dataText: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //背景
        view.backgroundColor = UIColor(red: 0.984, green: 0.956, blue: 0.866, alpha: 1.0)
        
        let format = DateFormatter()
        format.dateStyle = .short
        format.locale = Locale(identifier: "ja_JP")
        dataText.text = format.string(from: Date())
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
