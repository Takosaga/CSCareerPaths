//
//  CareersView.swift
//  CSCareerPaths
//
//  Created by Gonzalo Gamez on 6/22/20.
//  Copyright © 2020 Gamez. All rights reserved.
//

import SwiftUI

struct CareersView: View {
    @ObservedObject var favorites = Favorites()
    let careers: [Career] = Bundle.main.decode("careers.JSON")
    
    var body: some View {
        NavigationView {
            List(careers) { career in
                NavigationLink(destination:
                CareerDetailsView(career: career)) {
                    
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
                    
                    if self.favorites.contains(career) {
                        Spacer()
                        Image(systemName: "heart.fill")
                            .accessibility(label: Text("This is a favorite career"))
                            .foregroundColor(.red)
                    }
                }
            }
            .navigationBarTitle("Career Fields", displayMode: .inline)
        }
        
    }
}


struct CareersView_Previews: PreviewProvider {
    static var previews: some View {
        CareersView()
    }
}
