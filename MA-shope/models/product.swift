//
//  product.swift
//  MA-shope
//
//  Created by ayman on 9/7/19.
//  Copyright © 2019 ayman. All rights reserved.
//

import Foundation
struct products {
    
    private(set)public var image:String
    private(set)public var title:String
    private(set)public var price:String
    
    init(image:String,title:String,price:String) {
        
        self.image=image
        self.title=title
        self.price=price
    }
    
    
}
