//
//  TaskListViewModel+Preview.swift
//  Tasky
//
//  Created by Nazmul Islam on 5/7/24.
//

import Foundation

extension TaskListViewModel {
    static func todos() -> TaskListSectionViewModel {
        return .preview(
            title: "Todos",
            rows: [
                .preview(title: "Task 1"),
                .preview(title: "Task 2"),
                .preview(title: "Task 3"),
            ]
        )
    }

    static func dones() -> TaskListSectionViewModel {
        return .preview(
            title: "Done",
            rows: [
                .preview(checkbox: .preview(isChecked: true), title: "Task 4"),
                .preview(checkbox: .preview(isChecked: true), title: "Task 5"),
                .preview(checkbox: .preview(isChecked: true), title: "Task 6"),
            ]
        )
    }

    static func preview(
        title: String = "Tasks",
        todos: TaskListSectionViewModel = todos(),
        dones: TaskListSectionViewModel = dones()
    ) -> TaskListViewModel {
        return TaskListViewModel(
            title:title,
            todos: todos,
            dones: dones
        )
    }
}
