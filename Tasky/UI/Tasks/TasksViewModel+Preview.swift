//
//  TasksViewModel+Preview.swift
//  Tasky
//
//  Created by Nazmul Islam on 5/7/24.
//

import Foundation

extension TasksViewModel {
    static func preview(
        title: String = "Tasks",
        list: TaskListViewModel = .preview()
    ) -> TasksViewModel {
        return TasksViewModel(title: title, list: list)
    }
}
