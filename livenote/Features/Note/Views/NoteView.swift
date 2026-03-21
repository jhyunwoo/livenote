//
//  NoteView.swift
//  livenote
//
//  Created by 전현우 on 1/26/26.
//
import SwiftUI

struct NoteView:View{
    var body:some View{
        NavigationSplitView{
            List{
                Text("Meeting Notes")
                Text("Ideas")
            }.navigationTitle("Notes")
        } detail:{
            Text("Select a Note")
        }
    }
}

#Preview{
    NoteView()
}
