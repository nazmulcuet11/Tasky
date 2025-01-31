//
//  TaskRepository.swift
//  Tasky
//
//  Created by Nazmul Islam on 1/31/25.
//

import Foundation

protocol TaskRepository {
    func fetchTasks() async -> [Task]
}
