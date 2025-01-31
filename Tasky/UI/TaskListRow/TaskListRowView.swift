//
//  TaskRowView.swift
//  Tasky
//
//  Created by Nazmul Islam on 5/3/24.
//

import SwiftUI

struct TaskListRowView: View {
    let viewModel: TaskListRowViewModel

    var body: some View {
        HStack {
            CheckboxView(viewModel: viewModel.checkbox)
            Text(viewModel.title)
                .strikethrough(viewModel.checkbox.isChecked)
            Spacer()
        }
    }
}

#Preview {
    TaskListRowView(viewModel: .preview())
}
