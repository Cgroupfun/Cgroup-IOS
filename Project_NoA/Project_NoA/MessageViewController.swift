//
//  MessageViewController.swift
//  Project_NoA
//
//  Created by かーくん on 2018/10/12.
//  Copyright © 2018 加藤景也. All rights reserved.
//

import UIKit

class MessageViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        //ナビゲーションバーを作る
        let navBar = UINavigationBar()
        //xとyで位置を、widthとheightで幅と高さを指定する
        navBar.frame = CGRect(x: 0, y: 0, width: 375, height: 60)
        //ナビゲーションアイテムのタイトルを設定
        let navItem : UINavigationItem = UINavigationItem(title: "めっせーじそうしん")
        //ナビゲーションバー右のボタンを設定
        navItem.rightBarButtonItem = UIBarButtonItem(title: "遷移", style: UIBarButtonItemStyle.plain, target: self, action:#selector(self.myAction))
        //ナビゲーションバー左のボタンを設定
        navItem.leftBarButtonItem = UIBarButtonItem(title: "戻る", style: UIBarButtonItemStyle.plain, target: self, action:#selector(self.returnView))
        //ナビゲーションバーにアイテムを追加
        navBar.pushItem(navItem, animated: true)
        //Viewにナビゲーションバーを追加
        self.view.addSubview(navBar)
        
        //背景
        view.backgroundColor = UIColor(red: 0.984, green: 0.956, blue: 0.866, alpha: 1.0)
    }
    
    @objc func myAction(){
        let storyboard: UIStoryboard = self.storyboard!
        let second = storyboard.instantiateViewController(withIdentifier: "next")
        
        //ナビゲーションバーを作る
        let navBar = UINavigationBar()
        //xとyで位置を、widthとheightで幅と高さを指定する
        navBar.frame = CGRect(x: 0, y: 0, width: 375, height: 60)
        //ナビゲーションアイテムのタイトルを設定
        let navItem : UINavigationItem = UINavigationItem(title: "タイトル")
        //ナビゲーションバー左のボタンを設定
        navItem.leftBarButtonItem = UIBarButtonItem(title: "戻る", style: UIBarButtonItemStyle.plain, target: self, action:#selector(self.returnView))
        //ナビゲーションバーにアイテムを追加
        navBar.pushItem(navItem, animated: true)
        //遷移先Viewにナビゲーションバーを追加
        second.view.addSubview(navBar)
        //画面遷移
        self.present(second, animated: true, completion: nil)
    }
    
    
    //遷移先Viewから戻る処理
    @objc func returnView(){
        self.dismiss(animated: true, completion: nil)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
