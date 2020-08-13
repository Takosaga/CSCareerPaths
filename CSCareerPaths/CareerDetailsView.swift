//
//  CareerDetailsView.swift
//  CSCareerPaths
//
//  Created by Gonzalo Gamez on 7/2/20.
//  Copyright © 2020 Gamez. All rights reserved.
//

import SwiftUI

struct CareerDetailsView: View {
    @ObservedObject var favorites = Favorites()
    
    let career: Career
    let joblist: [Job]
    
    var body: some View {
        NavigationView {
            VStack{
                Image(career.field)
                    .resizable()
                    .scaledToFit()
                
                Text("\(career.description)")
                    .foregroundColor(.secondary)
                    
                List(self.joblist) { job in
                    
                    NavigationLink(destination: JobsDetailsView(job: job)) {
                        VStack(alignment: .leading) {
                            Text(job.name)
                                .font(.headline)
                            Text("Avg $: \(job.average)")
                                .foregroundColor(.secondary)
                            
                            Text("Short Description: \(job.short)")
                                .foregroundColor(.secondary)
                                
                        }
                        .layoutPriority(1)
                        
                        if self.favorites.contains(job) {
                            Spacer()
                            Image(systemName: "heart.fill")
                                .accessibility(label: Text("This is a favorite job"))
                                .foregroundColor(.red)
                        }
                      
                    }
                }
            }
                
            .navigationBarTitle("Jobs in \(career.field)", displayMode: .inline)
        }
        
        .environmentObject(favorites)
        
    }
    init(career: Career, joblist: [Job]) {
        self.career = career
        
        var matches = [Job]()
        
        for member in career.job {
            if let match = joblist.first(where: {$0.name == member}) {
                matches.append(match)
            } else {
                fatalError("Missing \(member)")
            }
        }
        
        self.joblist = matches
    }
}
extension String: Identifiable {
    public var id: String { self }
}

struct CareerDetailsView_Previews: PreviewProvider {
    static let joblist: [Job] = Bundle.main.decode("jobs.JSON")
    static var previews: some View {
        CareerDetailsView(career: Career.example, joblist: joblist)
    }
}
