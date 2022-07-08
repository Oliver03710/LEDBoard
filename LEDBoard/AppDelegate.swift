//
//  AppDelegate.swift
//  LEDBoard
//
//  Created by Junhee Yoon on 2022/07/06.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        sleep(1) // 런치 스크린을 2초간 띄우고 본화면 전환, 별다른 기능이 없을 경우. 코드가 있을 경우에는 넣지 않아도 됌
        
        return true
    }
    
    func applicationDidEnterBackground(_ application: UIApplication) {
        // Youtube - 프리미엄 결제했는지 판단해서 play or stop
        // 금융앱 - Background 상태일 때 보안유지를 위해서 화면 덮기
    }
    
    func applicationWillEnterForeground(_ application: UIApplication) {
        // Youtube - 프리미엄 결제하지 않은 사람들에게 팝업 띄우기(광고)
        // Kakaotalk - 잠금화면 쓰고 있을 때, 비밀번호 입력창 다시 띄우기
        // 금융앱 - 덮었던 화면 다시 재생
    }

    // MARK: UISceneSession Lifecycle

    @available(iOS 13.0, *)
    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        // Called when a new scene session is being created.
        // Use this method to select a configuration to create the new scene with.
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }

    @available(iOS 13.0, *)
    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
        // Called when the user discards a scene session.
        // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
        // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
    }


}

