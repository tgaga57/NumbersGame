//
//  AppDelegate.swift
//  NumbersGame
//
//  Created by 志賀大河 on 2019/08/05.
//  Copyright © 2019 Taigashiga. All rights reserved.
//

//AppDelegate.swift
//「.swift」ファイルはSwift言語で記載されたファイルであることを示します。
//つまり「AppDelegate.swift」はSwift言語で記述されたソースコードと言うことです。
//「AppDelegate.swift」はプロジェクトにおいて重要なファイルとなります。
//それは、アプリケーションのライフサイクルと呼ばれる動作の根幹を管理しているからです。

//アプリケーションが起動された時。
//アプリケーションがバックグラウンドになった時。
//アプリケーションがフォアグラウンドになった時。
//アプリケーションが閉じられた時。
//など...
//今は「アプリケーション全体を管理するファイル」と覚えておけば良いでしょう。

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
      
        return true
    }

    func applicationWillResignActive(_ application: UIApplication) {
     
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
  
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
        
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
        
    }

    func applicationWillTerminate(_ application: UIApplication) {
    }


}

