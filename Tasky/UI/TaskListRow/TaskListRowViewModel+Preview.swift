//
//  TaskRowViewModel+Preview.swift
//  Tasky
//
//  Created by Nazmul Islam on 5/3/24.
//

import Foundation

extension TaskListRowViewModel {
    static func preview() -> TaskListRowViewModel {
        return TaskListRowViewModel(
            checkbox: .preview(),
            title: "Do this"
        )
    }
}
