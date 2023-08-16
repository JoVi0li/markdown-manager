//
//  HomeView.swift
//  MarkdownManager
//
//  Created by João Vitor de Oliveira da Silva on 16/08/23.
//

import SwiftUI

struct HomeView: View {
    @State private var searchText: String = ""
    @State private var showCreateFileModal: Bool = false
    
    var body: some View {
        NavigationStack {
            List {
                
            }
            .navigationTitle(Text("Markdown Manager"))
            .toolbar {
                ToolbarItem {
                    NavigationLink {
                        MarkdownEditorView()
                    } label: {
                        Label("Create new file", systemImage: "doc.badge.plus")
                            .foregroundColor(.black)
                    }
                }
            }
        }
        .searchable(text: $searchText, prompt: "Search recent files")
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
