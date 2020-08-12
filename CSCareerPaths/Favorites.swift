//
//  Favorites.swift
//  CSCareerPaths
//
//  Created by Gonzalo Gamez on 6/25/20.
//  Copyright © 2020 Gamez. All rights reserved.
//

import SwiftUI

class Favorites: ObservableObject {
    private var jobs: Set<String>
    
    private let saveKey = "Favorites"
    
    init() {
        //load save
        
        if let data = UserDefaults.standard.data(forKey: self.saveKey) {
            if let decoded = try? JSONDecoder().decode(Set<String>.self, from: data) {
                self.jobs = decoded
                return
            }
        }
        self.jobs = []
    }
    
    func contains(_ job: Job) -> Bool {
        jobs.contains(job.id)
    }
    
    func add(_ job: Job) {
        objectWillChange.send()
        jobs.insert(job.id)
        save()
    }
    
    func remove(_ job: Job) {
        objectWillChange.send()
        jobs.remove(job.id)
        save()
    }
    
    func save() {
        if let encode = try? JSONEncoder().encode(jobs) {
            UserDefaults.standard.set(encode, forKey: self.saveKey)
        }
    }
}
