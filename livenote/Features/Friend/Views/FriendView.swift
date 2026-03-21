//
//  FriendView.swift
//  livenote
//
//  Created by 전현우 on 1/26/26.
//

import SwiftUI

struct FriendView:View{
    var body: some View {
        NavigationSplitView{
            List {
                Text("Alice")
                Text("Bob")
            }.navigationTitle("Friends")
        } detail: {
            Text("Select a Friend")
        }
    }
}

#Preview{
    FriendView()
}
