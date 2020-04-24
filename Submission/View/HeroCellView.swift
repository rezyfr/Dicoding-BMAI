//
//  HeroCellView.swift
//  Submission
//
//  Created by Fidriyanto Rizkillah on 24/04/20.
//  Copyright © 2020 Fidriyanto Rizkillah. All rights reserved.
//

import SwiftUI

struct HeroCellView: View {
    
    let hero: Hero
    
    var body: some View {
        HStack(spacing: 10) {
            RoundedImage(image: hero.photo, size: 80)
            VStack(alignment: .leading, spacing: 3){
                Text(hero.name).font(.headline)
                Text(hero.desc).font(.subheadline).lineLimit(3)
            }
        }.padding(.leading, 15)
            .padding(.trailing, 15)
            .padding(.top, 5)
    }
}
