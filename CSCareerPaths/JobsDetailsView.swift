//
//  JobsDetailsView.swift
//  CSCareerPaths
//
//  Created by Gonzalo Gamez on 7/15/20.
//  Copyright © 2020 Gamez. All rights reserved.
//

import SwiftUI

struct JobsDetailsView: View {
    
    let job: Job
    
    var body: some View {
        NavigationView {
            Text("Job Info")
            
            .navigationBarTitle("\(job.name)", displayMode: .inline)
        }
    }
}

struct JobsDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        JobsDetailsView(job: Job.example)
    }
}
