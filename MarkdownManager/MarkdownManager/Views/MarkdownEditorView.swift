//
//  MarkdownEditorView.swift
//  MarkdownManager
//
//  Created by João Vitor de Oliveira da Silva on 16/08/23.
//

import SwiftUI

struct MarkdownEditorView: View {
    @State private var markdownTextContent: String = ""
    
    var body: some View {
        NavigationView {
            VStack {
                TextEditor(text: $markdownTextContent)
                    .foregroundColor(.gray)
                    .border(.black)
                    .cornerRadius(10)
                    .padding()
            }
        }
        .navigationTitle(Text("Markdown Editor"))
    }
}

struct MarkdownEditorView_Previews: PreviewProvider {
    static var previews: some View {
        MarkdownEditorView()
    }
}
