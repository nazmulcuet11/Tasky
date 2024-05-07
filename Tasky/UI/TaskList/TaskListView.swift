//
//  TaskListView.swift
//  Tasky
//
//  Created by Nazmul Islam on 5/7/24.
//

import SwiftUI

struct TaskListView: View {
    var viewModel: TaskListViewModel

    var body: some View {
        List {
            TaskListSectionView(viewModel: viewModel.todos)
            TaskListSectionView(viewModel: viewModel.dones)
        }
    }
}

#Preview {
    TaskListView(viewModel: .preview())
}
