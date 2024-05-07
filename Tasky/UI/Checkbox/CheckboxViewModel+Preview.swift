//
//  CheckboxViewModel+Preview.swift
//  Tasky
//
//  Created by Nazmul Islam on 5/2/24.
//

import Foundation

extension CheckboxViewModel {
    static func preview(isChecked: Bool = false) -> CheckboxViewModel {
        CheckboxViewModel(isChecked: isChecked)
    }
}
