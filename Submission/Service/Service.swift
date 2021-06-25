//
//  Service.swift
//  Submission
//
//  Created by Fidriyanto Rizkillah on 25/04/20.
//  Copyright © 2020 Fidriyanto Rizkillah. All rights reserved.
//

import Foundation
import SwiftyJSON

struct Service{
    
    class getNews: ObservableObject {
        @Published var data = [News]()
        
        init(){
            let source = "https://newsapi.org/v2/everything?apiKey=5c7f4a7094914ff1bb6a6eb6e6be8f74&q=corona&pageSize=10"
            
            let url = URL(string: source)!
            
            let session = URLSession(configuration: .default)
            
            session.dataTask(with: url){data,_,err in
                if err != nil{
                    print(err?.localizedDescription ?? "error")
                    return
                }
                let json = try! JSON(data:data!)
                
                for i in json["articles"]{
                    let title = i.1["title"].stringValue
                    let description = i.1["description"].stringValue
                    let image = i.1["image"].stringValue
                    
                    DispatchQueue.main.async{
                        self.data.append(News(title: title, description: description, image: image))
                    }
                }
            }.resume()
        }
    }
}
