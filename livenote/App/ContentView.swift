//
//  ContentView.swift
//  livenote
//
//  Created by 전현우 on 1/26/26.
//

import SwiftUI

enum Tab {
    case team, note, friend
}

struct ContentView: View {
    @State private var selectedTab: Tab = .team
    
    var body: some View {
        TabView(selection:$selectedTab){
            TeamView().tabItem{
                Label("팀", systemImage:"person.3")
            }.tag(Tab.team)
            NoteView().tabItem{
                Label("노트", systemImage:"note.text")
            }.tag(Tab.note)
            FriendView().tabItem{
                Label("친구", systemImage:"person.3")
            }.tag(Tab.friend)
        }
    }
}



#Preview {
    ContentView()
}
