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

    private(set) var todos: TaskListSectionViewModel
    private(set) var dones: TaskListSectionViewModel

    init(
        todos: TaskListSectionViewModel,
        dones: TaskListSectionViewModel,
        delegate: TaskListViewModelDelegate? = nil
    ) {
        self.todos = todos
        self.dones = dones
        self.delegate = delegate

        setDelegates()
    }

    private func setDelegates() {
        todos.delegate = self
        dones.delegate = self
    }
}

extension TaskListViewModel: TaskListSectionViewModelDelegate {
    func onTapCheckbox(
        row: TaskListRowViewModel,
        section: TaskListSectionViewModel
    ) {
        if section === todos {
            todos.remove(row: row)
            dones.add(row: row)
        } else if section === dones {
            dones.remove(row: row)
            todos.add(row: row)
        }

        delegate?.onTapCheckbox(row: row, section: section, list: self)
    }
}
