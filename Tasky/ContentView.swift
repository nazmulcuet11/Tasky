//
//  ContentView.swift
//  Tasky
//
//  Created by Nazmul Islam on 5/2/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            TaskListView(viewModel: .preview())
        }
    }
}

#Preview {
    ContentView()
}
