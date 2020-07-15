//
//  CareerDetailsView.swift
//  CSCareerPaths
//
//  Created by Gonzalo Gamez on 7/2/20.
//  Copyright © 2020 Gamez. All rights reserved.
//

import SwiftUI

struct CareerDetailsView: View {
    
    let career: Career
    let joblist: [Job]
    
    var body: some View {
        NavigationView {
            
            
            VStack{
                Image(career.field)
                    .resizable()
                    .scaledToFit()
                    
                List(career.job) { job in
                    VStack(alignment: .leading) {
                        Text(job)
                            .font(.headline)
                        Text("Avg $:")
                            .foregroundColor(.secondary)
                        
                        Text("Short Description:")
                        .foregroundColor(.secondary)
                            
                    }
                    .layoutPriority(1)
                }
            }
                
            .navigationBarTitle("Jobs in \(career.field)", displayMode: .inline)
        }
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
