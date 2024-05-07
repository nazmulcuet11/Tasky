//
//  TaskRowViewModel.swift
//  Tasky
//
//  Created by Nazmul Islam on 5/3/24.
//

import Foundation

@Observable
final class TaskListRowViewModel: Identifiable {
    weak var delegate: TaskListRowViewModelDelegate?

    private(set) var checkbox: CheckboxViewModel
    private(set) var title: String

    init(
        checkbox: CheckboxViewModel,
        title: String,
        delegate: TaskListRowViewModelDelegate? = nil
    ) {
        self.checkbox = checkbox
        self.title = title
        self.delegate = delegate

        setDelegates()
    }

    private func setDelegates() {
        checkbox.delegate = self
    }
}

// MARK: - CheckboxViewModelDelegate

extension TaskListRowViewModel: CheckboxViewModelDelegate {
    func onTapCheckbox(_ checkbox: CheckboxViewModel) { 
        delegate?.onTapCheckbox(in: self)
    }
}
