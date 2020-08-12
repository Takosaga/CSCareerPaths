//
//  JobsDetailsView.swift
//  CSCareerPaths
//
//  Created by Gonzalo Gamez on 7/15/20.
//  Copyright © 2020 Gamez. All rights reserved.
//

import SwiftUI

struct JobsDetailsView: View {
    @EnvironmentObject var favorites: Favorites

    let job: Job
    
    var body: some View {
        NavigationView {
            VStack{
                Text("\(job.description)")
                    
                Button(favorites.contains(job) ? "Remove from Favorite Jobs" : "Add to Favorite Jobs") {
                    if self.favorites.contains(self.job) {
                        self.favorites.remove(self.job)
                    } else {
                        self.favorites.add(self.job)
                    }
                }
            }
            
            .navigationBarTitle("\(job.name)", displayMode: .inline)
        }
    }
}

struct JobsDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        JobsDetailsView(job: Job.example)
    }
}
