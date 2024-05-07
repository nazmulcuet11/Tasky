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

    init(
        isChecked: Bool = false,
        delegate: CheckboxViewModelDelegate? = nil
    ) {
        self.isChecked = isChecked
        self.delegate = delegate
    }

    func onTapCheckbox() {
        isChecked.toggle()
        delegate?.onTapCheckbox(self)
    }
}
