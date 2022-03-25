//
//  MessageView.swift
//  HoboShare
//
//  Created by Dan Payne on 3/24/22.
//

import SwiftUI

struct MessageView: View {
    var body: some View {
        ZStack {
            Color.secondary
            Text("Message View!")
                .foregroundColor(.primary)
        }
    }
}

struct MessageView_Previews: PreviewProvider {
    static var previews: some View {
        MessageView()
    }
}
