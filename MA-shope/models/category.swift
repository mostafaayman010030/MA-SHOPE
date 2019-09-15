//
//  category.swift
//  MA-shope
//
//  Created by ayman on 9/7/19.
//  Copyright © 2019 ayman. All rights reserved.
//

import Foundation
struct Category {
    private(set)public var titlename:String
    private(set)public var imagename:String
    
    
    init(titlename:String,imagename:String) {
        self.titlename = titlename
        self.imagename = imagename
        
    }
}
