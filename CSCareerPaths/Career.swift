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
    let name: String
    let description: String
    let imageCredit: String
    let price: Int
    let size: Int
    let snowDepth: Int
    let elevation: Int
    let runs: Int
    let jobs: Int
    let facilities: [String]
    let job: [String]
    
    static let allCareers: [Career] =
        Bundle.main.decode("careers.JSON")
    static let example = allCareers[0]
}

