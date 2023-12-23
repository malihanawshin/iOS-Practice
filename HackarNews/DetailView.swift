//
//  DetailView.swift
//  HackarNews
//
//  Created by Maliha on 21/12/23.
//

import SwiftUI

struct DetailView: View {
    
    let url: String?
    
    var body: some View {
        WebView(urlString: url)
    }
}

#Preview {
    DetailView(url: "https://www.google.com")
}

