//
//  News.swift
//  Submission
//
//  Created by Fidriyanto Rizkillah on 25/04/20.
//  Copyright © 2020 Fidriyanto Rizkillah. All rights reserved.
//

import Foundation

struct News: Identifiable {
    var id: String = UUID().uuidString
    var title: String
    var description: String
    var image: String?
}
