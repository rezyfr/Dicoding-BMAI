//
//  HeroDetail.swift
//  Submission
//
//  Created by Fidriyanto Rizkillah on 24/04/20.
//  Copyright © 2020 Fidriyanto Rizkillah. All rights reserved.
//

import SwiftUI

struct HeroDetail: View {
    
    var hero: Hero
    
    var body: some View {
        VStack(alignment: .center, spacing: 8){
            Text(hero.name).font(.title).bold().padding(.horizontal, 32.0)
            RoundedImage(image: hero.photo, size: 200).padding()
            Text(hero.desc).font(.subheadline).multilineTextAlignment(.center).padding(.horizontal, 32.0)
            Spacer()
        }
    }
}
