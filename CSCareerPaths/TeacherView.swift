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
            ScrollView{
                Image("mr.gamez")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 350, height: 350)
                
                Text("Mr. Gamez")
                    .font(.headline)
                Text("This is going to be my 7th year of teaching all years math and last two years computer science")
                Text("What is different about me is that I learned all my computer science stuff through online in google and youtube. For example how to make this app and making my website and a youtube https://codewithgamez.github.io/website/")
            }
            .navigationBarTitle("Teacher", displayMode: .inline)
        }
    }
}

struct TeacherView_Previews: PreviewProvider {
    static var previews: some View {
        TeacherView()
    }
}
