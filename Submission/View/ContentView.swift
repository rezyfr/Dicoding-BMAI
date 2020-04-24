//
//  ContentView.swift
//  Submission
//
//  Created by Fidriyanto Rizkillah on 24/04/20.
//  Copyright © 2020 Fidriyanto Rizkillah. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    //    let heroes = DummyHeroes.heroes()
    
    /// view body
    var body: some View {
        NavigationView {
            List(heroes) {hero in
                NavigationLink(destination: HeroDetail(hero: hero)){
                    HeroCellView(hero: hero)
                }
            }
            .padding(.leading, -20)
            .padding(.trailing, -20)
            .navigationBarTitle(Text("Pahlawan"))
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
