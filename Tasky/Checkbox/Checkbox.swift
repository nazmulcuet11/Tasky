//
//  CheckboxViewModel.swift
//  Tasky
//
//  Created by Nazmul Islam on 5/2/24.
//

import SwiftUI



@Observable
final class Checkbox {
    var isChecked: Bool
    weak var delegate: CheckboxDelegate?

    init(isChecked: Bool = false) {
        self.isChecked = isChecked
    }

    func onTapCheckbox() {
        isChecked.toggle()
        delegate?.onTapCheckbox(self)
    }
}
