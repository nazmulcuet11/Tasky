//
//  TaskRowViewModel+Preview.swift
//  Tasky
//
//  Created by Nazmul Islam on 5/3/24.
//

import Foundation

extension TaskRowViewModel {
    static func preview() -> TaskRowViewModel {
        return TaskRowViewModel(
            checkbox: .preview(),
            title: "Do this"
        )
    }
}
