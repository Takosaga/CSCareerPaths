//
//  Webview.swift
//  CSCareerPaths
//
//  Created by Gonzalo Gamez on 9/23/20.
//  Copyright © 2020 Gamez. All rights reserved.
//

import Foundation
import Foundation
import SwiftUI
import WebKit

struct Webview: UIViewRepresentable {
    
    var url: String
    
    func makeUIView(context: Context) -> some UIView {
        guard let url = URL(string: self.url) else {
            return WKWebView()
        }
        
        let request = URLRequest(url: url)
        let wkWebview = WKWebView()
        wkWebview.load(request)
        return wkWebview
    }
    
    func updateUIView(_ uiView: UIViewType, context: Context) {
        
    }
    
}
