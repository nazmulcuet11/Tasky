//
//  TaskListViewModel+Preview.swift
//  Tasky
//
//  Created by Nazmul Islam on 5/7/24.
//

import Foundation

extension TaskListViewModel {
    static func todoRows() -> [TaskListRowViewModel] {
        return [
            .preview(title: "Task 1"),
            .preview(title: "Task 2"),
            .preview(title: "Task 3"),
        ]
    }

    static func doneRows() -> [TaskListRowViewModel] {
        return [
            .preview(checkbox: .preview(isChecked: true), title: "Task 4"),
            .preview(checkbox: .preview(isChecked: true), title: "Task 5"),
            .preview(checkbox: .preview(isChecked: true), title: "Task 6"),
        ]
    }

    static func sections() -> [TaskListSectionViewModel] {
        return [
            .preview(title: "Todos", rows: todoRows()),
            .preview(title: "Done", rows: doneRows()),
        ]
    }

    static func preview(
        title: String = "Tasks",
        sections: [TaskListSectionViewModel] = sections()
    ) -> TaskListViewModel {
        return TaskListViewModel(
            title:title,
            sections: sections
        )
    }
}
