//
//  TeacherView.swift
//  CSCareerPaths
//
//  Created by Gonzalo Gamez on 6/22/20.
//  Copyright © 2020 Gamez. All rights reserved.
//

import SwiftUI

struct TeacherView: View {
    var body: some View {
        NavigationView {
            Text("About Teacher")
        .navigationBarTitle("Teacher", displayMode: .inline)
        }
    }
}

struct TeacherView_Previews: PreviewProvider {
    static var previews: some View {
        TeacherView()
    }
}
