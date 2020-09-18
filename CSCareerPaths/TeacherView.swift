//
//  TeacherView.swift
//  CSCareerPaths
//
//  Created by Gonzalo Gamez on 6/22/20.
//  Copyright © 2020 Gamez. All rights reserved.
//

import SwiftUI
import AVKit

struct TeacherView: View {
    var body: some View {
        NavigationView {
            
            VStack(alignment: .center){
                Image("mr.gamez")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 300, height: 300)
                
                Text("Mr. Gamez")
                    .padding()
                    .font(.headline)
                
                Text("This is going to be my 7th year of teaching all years math and last two years computer science. What is different about me is that I learned all my computer science stuff through online in google and youtube. For example I learned how to make this app, to make a website for my online course and a youtube.")
                    .multilineTextAlignment(.center)
                    .padding()
                
                
                
                Link("My Website", destination: URL(string: "https://codewithgamez.github.io/website/")!)
                    .padding()
                Link("My YouTube", destination: URL(string: "https://www.youtube.com/channel/UCq5m_ARYP0LF3vfeArU8dyg")!)
                        .padding()
               
                Spacer()
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
