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
            ForEach(viewModel.sections) {
                TaskListSectionView(viewModel: $0)
            }
        }
        .navigationTitle(viewModel.title)
    }
}

#Preview {
    NavigationStack {
        TaskListView(viewModel: .preview())
    }
}
