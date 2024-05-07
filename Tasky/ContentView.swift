//
//  ContentView.swift
//  Tasky
//
//  Created by Nazmul Islam on 5/2/24.
//

import SwiftUI

struct ContentView: View {
    @State
    var taskListViewModel = TaskListViewModel.preview()

    var body: some View {
        NavigationStack {
            TaskListView(viewModel: taskListViewModel)
        }
    }
}

#Preview {
    ContentView()
}
