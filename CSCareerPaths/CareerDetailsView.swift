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
    
    var body: some View {
        Text("\(career.description)")
    }
}

struct CareerDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        CareerDetailsView(career: Career.example)
    }
}
