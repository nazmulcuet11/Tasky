//
//  TaskRowViewModelDelegate.swift
//  Tasky
//
//  Created by Nazmul Islam on 5/3/24.
//

import Foundation

protocol TaskRowViewModelDelegate: AnyObject {
    func onTapCheckbox(_ taskRowViewModel: TaskRowViewModel)
}
