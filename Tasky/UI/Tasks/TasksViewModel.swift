//
//  TasksViewModel.swift
//  Tasky
//
//  Created by Nazmul Islam on 5/7/24.
//

import Foundation

@Observable
final class TasksViewModel {
    private(set) var title: String
    private(set) var list: TaskListViewModel

    init(
        title: String,
        list: TaskListViewModel
    ) {
        self.title = title
        self.list = list

        setDelegates()
    }

    private func setDelegates() {
        list.delegate = self
    }
}

extension TasksViewModel: TaskListViewModelDelegate {
    func onTapCheckbox(
        row: TaskListRowViewModel,
        section: TaskListSectionViewModel,
        list: TaskListViewModel
    ) {

    }
}
