//
//  TeamViewModel.swift
//  livenote
//
//  Created by 전현우 on 1/26/26.
//

import Foundation
import Combine

class TeamViewModel: ObservableObject {
    let teams = ["Alpha Team", "Beta Group", "Charlie Squad", "Delta Force", "Echo Lab", "최서연이 짱먹은 그룹"]

    @Published var searchText = ""

    var filteredTeams: [String] {
        if searchText.isEmpty {
            return teams
        } else {
            return teams.filter { $0.localizedCaseInsensitiveContains(searchText) }
        }
    }
}
