//
//  CheckboxViewModel.swift
//  Tasky
//
//  Created by Nazmul Islam on 5/2/24.
//

import SwiftUI



@Observable
final class CheckboxViewModel {
    weak var delegate: CheckboxViewModelDelegate?

    private(set) var isChecked: Bool

    init(isChecked: Bool = false) {
        self.isChecked = isChecked
    }

    func onTapCheckbox() {
        isChecked.toggle()
        delegate?.onTapCheckbox(self)
    }
}
