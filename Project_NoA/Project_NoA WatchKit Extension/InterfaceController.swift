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


class InterfaceController: WKInterfaceController {

    
    @IBOutlet var ZZZ: WKInterfaceLabel!
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        
        // Configure interface objects here.
    }
    
    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
       
    }
    
    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
        if WKInterfaceDevice.current().batteryState == WKInterfaceDeviceBatteryState.charging{
            self.ZZZ.setText("おやすみ")
        }
        
    }

}
