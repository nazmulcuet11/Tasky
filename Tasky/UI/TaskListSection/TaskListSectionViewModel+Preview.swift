//
//  TaskListSectionViewModel+Preview.swift
//  Tasky
//
//  Created by Nazmul Islam on 5/7/24.
//

import Foundation

extension TaskListSectionViewModel {
    static func rows() -> [TaskListRowViewModel] {
        return [
            .preview(title: "Task 1"),
            .preview(title: "Task 2"),
            .preview(title: "Task 3")
        ]
    }

    static func preview(
        title: String = "Todos",
        rows: [TaskListRowViewModel] = rows()
    ) -> TaskListSectionViewModel {
        return TaskListSectionViewModel(
            title:title,
            rows: rows
        )
    }
}
