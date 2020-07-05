//
//  CoursesView.swift
//  CSCareerPaths
//
//  Created by Gonzalo Gamez on 6/22/20.
//  Copyright © 2020 Gamez. All rights reserved.
//

import SwiftUI

struct CoursesView: View {
    let courses: [Course] = Bundle.main.decode("courses.JSON")
    
    var body: some View {
        NavigationView {
            List(courses) { course in
                NavigationLink(destination: CourseDetailsView(course: course)){
                        VStack(alignment: .leading) {
                            Text(course.name)
                                .font(.headline)
                            
                            Text("\(course.runs) runs")
                                
                                .foregroundColor(.secondary)
                        }
                        .layoutPriority(1)
                    }
            }
            .navigationBarTitle("Courses", displayMode: .inline)
        }
    }
}

struct CoursesView_Previews: PreviewProvider {
    static var previews: some View {
        CoursesView()
    }
}
