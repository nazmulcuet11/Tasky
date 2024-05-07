//
//  TaskListSectionViewModel.swift
//  Tasky
//
//  Created by Nazmul Islam on 5/7/24.
//

import Foundation

@Observable
final class TaskListSectionViewModel: Identifiable {
    weak var delegate: TaskListSectionViewModelDelegate?

    private(set) var title: String
    private(set) var rows: [TaskListRowViewModel]

    init(
        title: String,
        rows: [TaskListRowViewModel],
        delegate: TaskListSectionViewModelDelegate? = nil
    ) {
        self.title = title
        self.rows = rows
        self.delegate = delegate

        setDelegates()
    }

    func add(row: TaskListRowViewModel) {
        row.delegate = self
        rows.append(row)
    }

    func remove(row: TaskListRowViewModel) {
        row.delegate = nil
        rows.removeAll { $0.id == row.id }
    }

    private func setDelegates() {
        for row in rows {
            row.delegate = self
        }
    }
}

extension TaskListSectionViewModel: TaskListRowViewModelDelegate {
    func onTapCheckbox(row: TaskListRowViewModel) {
        delegate?.onTapCheckbox(row: row, section: self)
    }
}
