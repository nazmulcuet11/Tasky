//
//  CheckboxViewModelDelegate.swift
//  Tasky
//
//  Created by Nazmul Islam on 5/2/24.
//

import Foundation

protocol CheckboxViewModelDelegate: AnyObject {
    func onTapCheckbox(_ checkbox: CheckboxViewModel)
}
