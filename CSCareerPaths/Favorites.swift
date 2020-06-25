//
//  Favorites.swift
//  CSCareerPaths
//
//  Created by Gonzalo Gamez on 6/25/20.
//  Copyright © 2020 Gamez. All rights reserved.
//

import SwiftUI

class Favorites: ObservableObject {
    private var careers: Set<String>
    
    private let saveKey = "Favorites"
    
    init() {
        //load save
        
        if let data = UserDefaults.standard.data(forKey: self.saveKey) {
            if let decoded = try? JSONDecoder().decode(Set<String>.self, from: data) {
                self.careers = decoded
                return
            }
        }
        self.careers = []
    }
    
    func contains(_ career: Career) -> Bool {
        careers.contains(career.id)
    }
    
    func add(_ career: Career) {
        objectWillChange.send()
        careers.insert(career.id)
        save()
    }
    
    func remove(_ career: Career) {
        objectWillChange.send()
        careers.remove(career.id)
        save()
    }
    
    func save() {
        if let encode = try? JSONEncoder().encode(careers) {
            UserDefaults.standard.set(encode, forKey: self.saveKey)
        }
    }
}
