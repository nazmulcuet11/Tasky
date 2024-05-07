//
//  TasksView.swift
//  Tasky
//
//  Created by Nazmul Islam on 5/7/24.
//

import SwiftUI

struct TasksView: View {
    var viewModel: TasksViewModel

    var body: some View {
        VStack {
            TaskListView(viewModel: viewModel.list)

            addTaskButton
        }
        .navigationTitle(viewModel.title)
    }

    var addTaskButton: some View {
        HStack {
            Button("Add Tasks") {

            }

            Spacer()
        }
        .padding(.horizontal, 30)
    }
}

#Preview {
    NavigationStack {
        TasksView(viewModel: .preview())
    }
}
