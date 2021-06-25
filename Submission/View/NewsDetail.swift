//
//  HeroDetail.swift
//  Submission
//
//  Created by Fidriyanto Rizkillah on 24/04/20.
//  Copyright © 2020 Fidriyanto Rizkillah. All rights reserved.
//

import SwiftUI

struct NewsDetail: View {
    
    var news: News
    
    var body: some View {
        VStack(alignment: .center, spacing: 8){
            Text(news.title).font(.title).bold().padding(.horizontal, 32.0)
            if news.image != ""{
                RoundedImage(image: news.image!, size: 80)
            } else {
                Text("Image\nunavailable").padding(.bottom, 16)
            }
            Text(news.description).font(.subheadline).multilineTextAlignment(.center).padding(.horizontal, 32.0)
            Spacer()
        }
    }
}
