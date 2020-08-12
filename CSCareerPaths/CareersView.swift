//
//  CareersView.swift
//  CSCareerPaths
//
//  Created by Gonzalo Gamez on 6/22/20.
//  Copyright © 2020 Gamez. All rights reserved.
//

import SwiftUI

struct CareersView: View {
    
    let careers: [Career] = Bundle.main.decode("careers.JSON")
    let joblist: [Job] = Bundle.main.decode("jobs.JSON")
    
    var body: some View {
        NavigationView {
            List(careers) { career in
                NavigationLink(destination:
                CareerDetailsView(career: career, joblist: self.joblist)) {
                    
                    Image(career.field)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 83, height: 60)
                        .clipShape(Capsule())
                        
                        .overlay(Capsule()
                        .stroke(Color.primary, lineWidth: 2))
                
                    VStack(alignment: .leading) {
                        Text(career.field)
                            .font(.headline)
                        
                        Text("\(career.jobs) jobs in field")
                            
                            .foregroundColor(.secondary)
                    }
                    .layoutPriority(1)
                    
                }
            }
            .navigationBarTitle("Career Fields in Computer Science", displayMode: .inline)
        }
        
    }
}


struct CareersView_Previews: PreviewProvider {
    static var previews: some View {
        CareersView()
    }
}
