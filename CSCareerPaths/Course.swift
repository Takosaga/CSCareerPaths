//
//  Course.swift
//  CSCareerPaths
//
//  Created by Gonzalo Gamez on 6/26/20.
//  Copyright © 2020 Gamez. All rights reserved.
//

import Foundation

struct Course: Codable, Identifiable {
    let id: String
    let name: String
    let description: String
    let imageCredit: String
    let price: Int
    let size: Int
    let snowDepth: Int
    let elevation: Int
    let runs: Int
    let facilities: [String]
    
    static let allCourses: [Course] =
        Bundle.main.decode("course.JSON")
    static let example = allCourses[0]
}
