//
//  HeroCellView.swift
//  Submission
//
//  Created by Fidriyanto Rizkillah on 24/04/20.
//  Copyright © 2020 Fidriyanto Rizkillah. All rights reserved.
//

import SwiftUI

struct NewsCellView: View {
    
    let news: News
    
    var body: some View {
        HStack(spacing: 10) {
            if news.image != ""{
                RoundedImage(image: news.image!, size: 80)
            } else {
                Text("Image\nunavailable")
            }
            VStack(alignment: .leading, spacing: 3){
                Text(news.title).font(.headline)
                Text(news.description).font(.subheadline).lineLimit(3)
            }
        }.padding(.leading, 15)
            .padding(.trailing, 15)
            .padding(.top, 5)
    }
}
