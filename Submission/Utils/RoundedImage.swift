//
//  RoundedImage.swift
//  Submission
//
//  Created by Fidriyanto Rizkillah on 24/04/20.
//  Copyright © 2020 Fidriyanto Rizkillah. All rights reserved.
//

import SwiftUI

struct RoundedImage: View {
    let image: String
    let size: CGFloat
    
    var body: some View{
        VStack(alignment: .center, spacing: 15){
            Image(image)
                .resizable()
                .scaledToFill()
                .frame(width: size, height: size)
                .cornerRadius(size/2)
        }
    }
}
