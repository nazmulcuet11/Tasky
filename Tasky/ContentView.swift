//
//  ContentView.swift
//  Tasky
//
//  Created by Nazmul Islam on 5/2/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        List {
            TaskListSectionView(viewModel: .preview())
        }
    }
}

#Preview {
    ContentView()
}
