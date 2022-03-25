//
//  ContentView.swift
//  HoboShare
//
//  Created by Dan Payne on 3/24/22.
//

import SwiftUI
import FBAuthentication

struct ContentView: View {
    @EnvironmentObject var userInfo: UserInfo
    
    var body: some View {
        LoadingView(startView: HomeView())
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environmentObject(UserInfo())
    }
}
