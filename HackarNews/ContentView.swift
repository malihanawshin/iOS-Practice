//
//  ContentView.swift
//  HackarNews
//
//  Created by Maliha on 20/12/23.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var networkManager = NetworkManager()
    
    var body: some View {
        NavigationView{
            List(networkManager.posts){post in
                NavigationLink(destination: DetailView(url: post.url)) {
                    HStack{
                        Text(String(post.points))
                        Text(post.title)
                    }
                }
                
            }
            .navigationBarTitle("Hacker News")
        }
        
        .onAppear(perform: {
            self.networkManager.fetchData()
        })
        
    }
    
    
}

#Preview {
    ContentView()
}
