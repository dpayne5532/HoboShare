//
//  HoboShareApp.swift
//  HoboShare
//
//  Created by Dan Payne on 3/24/22.
//

import SwiftUI
import Firebase
import FBAuthentication

@main
struct HoboShareApp: App {
    init() {
        FirebaseApp.configure()
    }
    
    
    var body: some Scene {
        WindowGroup {
            ContentView().environmentObject(UserInfo())
        }
    }
}
