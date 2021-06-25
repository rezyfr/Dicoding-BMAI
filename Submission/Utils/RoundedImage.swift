//
//  RoundedImage.swift
//  Submission
//
//  Created by Fidriyanto Rizkillah on 24/04/20.
//  Copyright © 2020 Fidriyanto Rizkillah. All rights reserved.
//

import SwiftUI
import SDWebImageSwiftUI

struct RoundedImage: View {
    let image: String
    let size: CGFloat
    
    var body: some View{
        VStack(alignment: .center, spacing: 15){
            if image.hasPrefix("http"){
                WebImage(url: URL(string: image), options: .highPriority, context: nil)
                    .resizable()
                    .scaledToFill()
                    .frame(width: size, height: size)
                    .cornerRadius(size/2)
            } else {
                Image(image)
                    .resizable()
                    .scaledToFill()
                    .frame(width: size, height: size)
                    .cornerRadius(size/2)
            }
            
        }
    }
}
