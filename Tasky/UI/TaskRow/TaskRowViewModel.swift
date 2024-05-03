//
//  TaskRowViewModel.swift
//  Tasky
//
//  Created by Nazmul Islam on 5/3/24.
//

import Foundation

@Observable
final class TaskRowViewModel {
    weak var delegate: TaskRowViewModelDelegate?

    private(set) var checkbox: CheckboxViewModel
    private(set) var title: String

    init(
        checkbox: CheckboxViewModel,
        title: String,
        delegate: TaskRowViewModelDelegate? = nil
    ) {
        self.checkbox = checkbox
        self.title = title
        self.delegate = delegate

        // set delegates
        checkbox.delegate = self
    }
}

extension TaskRowViewModel: CheckboxViewModelDelegate {
    func onTapCheckbox(_ checkbox: CheckboxViewModel) { 
        delegate?.onTapCheckbox(self)
    }
}
