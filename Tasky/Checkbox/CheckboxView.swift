//
//  CheckboxView.swift
//  Tasky
//
//  Created by Nazmul Islam on 5/2/24.
//

import SwiftUI

struct CheckboxView: View {
    var checkbox: Checkbox

    var body: some View {
        Image(systemName: imageName)
            .onTapGesture {
                withAnimation {
                    checkbox.onTapCheckbox()
                }
            }
    }

    var imageName: String {
        checkbox.isChecked ? "checkmark.square" : "square"
    }
}

#Preview {
    CheckboxView(checkbox: .preview())
}
