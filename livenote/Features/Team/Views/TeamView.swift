//
//  TeamView.swift
//  livenote
//
//  Created by 전현우 on 1/26/26.
//

import SwiftUI

struct TeamView:View {
    @StateObject private var viewModel = TeamViewModel()
    
    var body:some View {
        NavigationSplitView {
            List(viewModel.filteredTeams, id: \.self){
                team in Text(team)
            }.navigationTitle("나의 팀").searchable(text: $viewModel.searchText, placement:.sidebar, prompt:"Search Teams")
        } detail: {
            Text("Select a Team from the sidebar").font(.largeTitle)
        }
    }
}

#Preview {
    TeamView()
}
