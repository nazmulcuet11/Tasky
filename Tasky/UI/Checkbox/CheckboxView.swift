//
//  CheckboxView.swift
//  Tasky
//
//  Created by Nazmul Islam on 5/2/24.
//

import SwiftUI

struct CheckboxView: View {
    let viewModel: CheckboxViewModel

    var body: some View {
        Image(systemName: imageName)
            .onTapGesture {
                withAnimation {
                    viewModel.onTapCheckbox()
                }
            }
    }

    var imageName: String {
        viewModel.isChecked ? "checkmark.square" : "square"
    }
}

#Preview {
    CheckboxView(viewModel: .preview())
}
