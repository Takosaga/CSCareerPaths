//
//  CourseDetailsView.swift
//  CSCareerPaths
//
//  Created by Gonzalo Gamez on 7/2/20.
//  Copyright © 2020 Gamez. All rights reserved.
//

import SwiftUI
import AVKit

struct CourseDetailsView: View {
    
    let course: Course
    
    var body: some View {
        NavigationView {
            ScrollView(.vertical){
                VStack{
                    
                    if #available(iOS 14.0, *) {
                        VideoPlayer(player: AVPlayer(url:  URL(string: "https://bit.ly/swswift")!)
                        )
                    }
                    
                    Text("Course Description")
                        .padding()
                        .font(.headline)
                    
                    Text("\(course.description)")
                        .padding()
                        .foregroundColor(.secondary)
                    
                    Text("Skills You'll Learn")
                        .padding()
                        .font(.headline)
                    
                    Text("\(course.skills)")
                        .padding()
                        .foregroundColor(.secondary)
                    
                    Spacer()
                }
            }
                
                .navigationBarTitle("\(course.name)", displayMode: .inline)
        }
    }
}

struct CourseDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        CourseDetailsView(course: Course.example)
    }
}
