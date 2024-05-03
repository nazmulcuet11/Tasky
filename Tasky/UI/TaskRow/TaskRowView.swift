//
//  TaskRowView.swift
//  Tasky
//
//  Created by Nazmul Islam on 5/3/24.
//

import SwiftUI

struct TaskRowView: View {
    var viewModel: TaskRowViewModel

    var body: some View {
        HStack {
            CheckboxView(checkbox: viewModel.checkbox)
            Text(viewModel.title)
                .strikethrough(viewModel.checkbox.isChecked)
            Spacer()
        }
    }
}

#Preview {
    TaskRowView(viewModel: .preview())
}
