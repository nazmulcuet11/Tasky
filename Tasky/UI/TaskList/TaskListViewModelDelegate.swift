//
//  TaskListViewModelDelegate.swift
//  Tasky
//
//  Created by Nazmul Islam on 5/7/24.
//

import Foundation

protocol TaskListViewModelDelegate: AnyObject {
    func onTapCheckbox(
        row: TaskListRowViewModel,
        section: TaskListSectionViewModel,
        list: TaskListViewModel
    )
}
