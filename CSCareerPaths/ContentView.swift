//
//  ContentView.swift
//  CSCareerPaths
//
//  Created by Gonzalo Gamez on 6/22/20.
//  Copyright © 2020 Gamez. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            
            CareersView()
                .tabItem {
                    Image(systemName: "mappin.and.ellipse")
                    Text("Careers")
                }
            
            CoursesView()
                .tabItem {
                    Image(systemName: "pencil.circle")
                    Text("Courses")
                }
            
            TeacherView()
                .tabItem {
                    Image(systemName: "person.circle")
                    Text("Teacher")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
