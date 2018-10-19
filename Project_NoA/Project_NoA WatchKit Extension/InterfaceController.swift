//
//  InterfaceController.swift
//  Project_NoA WatchKit Extension
//
//  Created by 加藤景也 on 2018/09/28.
//  Copyright © 2018年 加藤景也. All rights reserved.
//

import WatchKit
import Foundation
import UIKit
import AVFoundation


class InterfaceController: WKInterfaceController{
    //open var numberOfTapsRequired: Int = 1
    @IBOutlet var NoA: WKInterfaceImage!
    //タップトリガーで動く
    @IBAction func oshaberi(_ sender: Any) {
      
        animate(withDuration: 0.5) { () -> Void in
            self.NoA.setHorizontalAlignment(WKInterfaceObjectHorizontalAlignment.right)
        }

        self.animate(withDuration: 1) { () -> Void in
                self.NoA.setHorizontalAlignment(WKInterfaceObjectHorizontalAlignment.left)
            }

        self.animate(withDuration: 1.5) { () -> Void in
            self.NoA.setHorizontalAlignment(WKInterfaceObjectHorizontalAlignment.center)
        }//        }
    }
    
    //充電検知確認用のテキスト
    @IBOutlet var ZZZ: WKInterfaceLabel!
    override func awake(withContext context: Any?) {
        // Configure interface objects here.
    }
    
    override func willActivate() {
        // アプリが起動している時の動作
        super.willActivate()
        
       
        //充電時の画面遷移
        if WKInterfaceDevice.current().batteryState == WKInterfaceDeviceBatteryState.charging{
            self.ZZZ.setText("おやすみ")
        }
       
    }
    
    override func didDeactivate() {
        // アプリが起動してない状態の動作
        super.didDeactivate()
        
    }

}
