//
//  Job.swift
//  CSCareerPaths
//
//  Created by Gonzalo Gamez on 7/9/20.
//  Copyright © 2020 Gamez. All rights reserved.
//

import Foundation

struct Job: Codable, Identifiable {
    let id: String
    let name: String
    let description: String
    let youTube: String
    let average: Int
    let short: String

    
    
    static let allJobs: [Job] =
        Bundle.main.decode("jobs.JSON")
    static let example = allJobs[0]
}

