//
//  ContentView.swift
//  Tasky
//
//  Created by Nazmul Islam on 5/2/24.
//

import SwiftUI

struct ContentView: View {
    @State
    var taskListViewModel = TasksViewModel.preview()

    var body: some View {
        NavigationStack {
            TasksView(viewModel: taskListViewModel)
        }
    }
}

#Preview {
    ContentView()
}
