//
//  TaskRowViewModel+Preview.swift
//  Tasky
//
//  Created by Nazmul Islam on 5/3/24.
//

import Foundation

extension TaskListRowViewModel {
    static func preview(
        checkbox: CheckboxViewModel = .preview(),
        title: String = "Do this"
    ) -> TaskListRowViewModel {
        return TaskListRowViewModel(
            checkbox: checkbox,
            title: title
        )
    }
}
