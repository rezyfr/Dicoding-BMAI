//
//  ProfileView.swift
//  Submission
//
//  Created by Fidriyanto Rizkillah on 24/04/20.
//  Copyright © 2020 Fidriyanto Rizkillah. All rights reserved.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        NavigationView{
            VStack(alignment: .center, spacing: 0){
                RoundedImage(image: "displaypic", size: 200).padding()
                Text("Fidriyanto Rizkillah").font(.headline).padding(.horizontal, 32.0)
                Text("frizkillah98@gmail.com").font(.subheadline).multilineTextAlignment(.center).padding(.horizontal, 32.0)
                Spacer()
            }
        }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
