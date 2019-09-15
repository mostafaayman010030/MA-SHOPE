//
//  dataservices.swift
//  MA-shope
//
//  Created by ayman on 9/7/19.
//  Copyright © 2019 ayman. All rights reserved.
//

import Foundation

class dataservices {
    static let instance=dataservices()
    private let categories=[Category(titlename: "SHIRTS", imagename: "shirts.png"),
                            Category(titlename: "HOODIES", imagename: "hoodies"),
                            Category(titlename: "HATS", imagename: "hats.png"),
                            Category(titlename: "DIGITAL", imagename: "digital.png"),
                            ]
    
    private let shirts=[products(image: "shirt01.png", title: "coder shirt for android developer", price: "$18")
                        ,products(image: "shirt02.png", title: "coder shirt for ios developer", price: "$19")
                        ,products(image: "shirt03.png", title: "coder shirt for web developer", price: "$22")
                        ,products(image: "shirt04.png", title: "coder shirt for .net developer", price: "$23")
                        ,products(image: "shirt05.png", title: "coder shirt for iot developer", price: "$15")
    ]
    
    
    private let hoodies=[products(image: "hoodie01.png",title: "developers logo hoodie gray",price: "$18")
                        ,products(image: "hoodie02.png",title: "developers logo hoodie red",price: "$19")
                        ,products(image: "hoodie03.png",title: "developers logo hoodie gray",price: "$22")
                        ,products(image: "hoodie04.png",title: "developers logo hoodie red",price: "$23")
    ]

    
    private let hats=[products(image: "hat01.png", title: "developer logo hat1", price: "$10"),
                      products(image: "hat02.png", title: "developer logo hat2", price: "$11"),
                      products(image: "hat03.png", title: "developer logo hat3", price: "$9"),
                      products(image: "hat04.png", title: "developer logo hat4", price: "$12"),    ]
    
    
    private let digital=[products]()
    
    
    func getcategories() ->[Category]  {
        return categories
    }
    
    func getproducts(fortitel title:String)->[products]
    {
        switch title {
        case "SHIRTS":
            return getshirts()
        
        case "HOODIES":
            return gethoodies()
            
        case "HATS":
            return gethats()
            
        case "DIGITAL":
            return getdigital()
        default:
            return getshirts()
        }
    }

    func getshirts() -> [products] {
        return shirts
    }
    func gethoodies() -> [products] {
        return hoodies
    }
    func gethats() -> [products] {
        return hats
    }
    func getdigital() -> [products] {
        return digital
    }
    
    
    
    
}
