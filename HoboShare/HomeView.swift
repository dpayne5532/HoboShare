//
//  HomeView.swift
//  HoboShare
//
//  Created by Dan Payne on 3/24/22.
//

import SwiftUI
import FBAuthentication

struct HomeView: View {
    @EnvironmentObject var userInfo: UserInfo
    
    var body: some View {
       
        VStack {
            
            
            TabView {
                MessageView()
                    .tabItem {
                        Image(systemName: "message")
                        Text("Messages")
                    }
                
                CalendarView()
                    .tabItem {
                        Image(systemName: "calendar")
                        Text("Calendar")
                    }
                
                TrailsView()
                    .tabItem {
                        Image(systemName: "map.fill")
                        Text("Trails")
                    }
                
                
                PhotoView()
                    .tabItem {
                        Image(systemName: "photo")
                        
                        Text("Photos")
                        
                    }
                
                
                ProfileView()
                    .tabItem {
                        Image(systemName: "person.fill")
                        
                        Text("Profile")
                        
                    }
                
                
                
            }
            .accentColor(.indigo)
//            Text("Logged in as \(userInfo.user.name)")
//            Button {
//                FBAuth.logout { result in
//                    switch result {
//                    case.success(_):
//                        print("Logged out")
//                    case .failure(let error):
//                        print(error.localizedDescription)
//                    }
//                }
//            } label: {
//                Text("Log Out")
//            }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView().environmentObject(UserInfo())
    }
}








struct PhotoView: View {
    var body: some View {
        ZStack {
            Color.white
            Image("appPhoto")
                .resizable()
                .scaledToFit()
            
            
        }
    }
}
