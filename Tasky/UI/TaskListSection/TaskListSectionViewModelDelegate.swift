//
//  TaskListSectionViewModelDelegate.swift
//  Tasky
//
//  Created by Nazmul Islam on 5/7/24.
//

import Foundation

protocol TaskListSectionViewModelDelegate: AnyObject {
    func onTapCheckbox(
        row: TaskListRowViewModel,
        section: TaskListSectionViewModel
    )
}
