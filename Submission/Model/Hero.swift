//
//  Hero.swift
//  Submission
//
//  Created by Fidriyanto Rizkillah on 24/04/20.
//  Copyright © 2020 Fidriyanto Rizkillah. All rights reserved.
//

import SwiftUI

struct Hero: Identifiable{
    var id = UUID().uuidString
    
    var name: String
    var desc: String
    var photo: String
    
    init(name:String, desc:String, photo:String){
        self.name = name
        self.desc = desc
        self.photo = photo
    }
}
