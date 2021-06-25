//
//  ContentView.swift
//  Submission
//
//  Created by Fidriyanto Rizkillah on 24/04/20.
//  Copyright © 2020 Fidriyanto Rizkillah. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var list = Service.getNews()
    var body: some View {
        NavigationView {
            List(list.data) {news in
                NavigationLink(destination:
                NewsDetail(news: news)){
                    NewsCellView(news: news)
                }
            }
            .padding(.leading, -20)
            .padding(.trailing, -20)
            .navigationBarTitle(Text("News"))
            .navigationBarItems(trailing:
                NavigationLink(destination: ProfileView()){
                    Image("profile")
                    
                }
            )
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
