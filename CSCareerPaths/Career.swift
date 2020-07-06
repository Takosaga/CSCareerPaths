//
//  Career.swift
//  CSCareerPaths
//
//  Created by Gonzalo Gamez on 6/25/20.
//  Copyright © 2020 Gamez. All rights reserved.
//

import Foundation

struct Career: Codable, Identifiable {
    let id: String
    let field: String
    let description: String
    let imageCredit: String
    let jobs: Int
    let job: [String]
    
    static let allCareers: [Career] =
        Bundle.main.decode("careers.JSON")
    static let example = allCareers[0]
}

