//
//  TaskListViewModel.swift
//  Tasky
//
//  Created by Nazmul Islam on 5/7/24.
//

import Foundation

@Observable
final class TaskListViewModel {
    weak var delegate: TaskListViewModelDelegate?

    private(set) var title: String
    private(set) var sections: [TaskListSectionViewModel]

    init( 
        title: String,
        sections: [TaskListSectionViewModel],
        delegate: TaskListViewModelDelegate? = nil
    ) {
        self.title = title
        self.sections = sections
        self.delegate = delegate

        setDelegates()
    }

    private func setDelegates() {
        for section in sections {
            section.delegate = self
        }
    }
}

extension TaskListViewModel: TaskListSectionViewModelDelegate {
    func onTapCheckbox(
        row: TaskListRowViewModel,
        section: TaskListSectionViewModel
    ) {
        delegate?.onTapCheckbox(row: row, section: section, list: self)
    }
}
