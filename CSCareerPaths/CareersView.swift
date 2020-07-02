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
                
                    VStack(alignment: .leading) {
                        Text(career.name)
                            .font(.headline)
                        
                        Text("\(career.runs) runs")
                            
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
            .navigationBarTitle("Careers")
        }
        
    }
}


struct CareersView_Previews: PreviewProvider {
    static var previews: some View {
        CareersView()
    }
}
