//
//  TaskListSectionView.swift
//  Tasky
//
//  Created by Nazmul Islam on 5/7/24.
//

import SwiftUI

struct TaskListSectionView: View {
    let viewModel: TaskListSectionViewModel

    var body: some View {
        Section {
            ForEach(viewModel.rows) {
                TaskListRowView(viewModel: $0)
            }
        } header: {
            Text(viewModel.title)
        }
    }
}

#Preview {
    List {
        TaskListSectionView(viewModel: .preview())
    }
}
