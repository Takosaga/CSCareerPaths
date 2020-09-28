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
                
                Webview(url: job.youTube)
                    .frame(minWidth: 0, idealWidth: 100, maxWidth: .infinity, minHeight: 0, idealHeight: 100, maxHeight: 200, alignment: .center)
                
                Text("Job Description")
                    .font(.headline)
                    .padding()
                
                Text("\(job.description)")
                    .multilineTextAlignment(.center)
                    .foregroundColor(.secondary)
                    .padding()
                    
                Button(favorites.contains(job) ? "Remove from Favorite Jobs" : "Add to Favorite Jobs") {
                    if self.favorites.contains(self.job) {
                        self.favorites.remove(self.job)
                    } else {
                        self.favorites.add(self.job)
                    }
                }
                .padding()
                Spacer()
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
