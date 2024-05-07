//
//  TaskRowViewModelDelegate.swift
//  Tasky
//
//  Created by Nazmul Islam on 5/3/24.
//

import Foundation

protocol TaskListRowViewModelDelegate: AnyObject {
    func onTapCheckbox(in rowViewModel: TaskListRowViewModel)
}
