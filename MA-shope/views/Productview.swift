//
//  productcell.swift
//  MA-shope
//
//  Created by ayman on 9/7/19.
//  Copyright © 2019 ayman. All rights reserved.
//

import UIKit

class Productview: UICollectionViewCell {
    @IBOutlet weak var productimage: UIImageView!
    @IBOutlet weak var producttitle: UILabel!
    @IBOutlet weak var productprice: UILabel!
    
    
    
    
    
    
    func updateview(product:products) {
        productimage.image=UIImage(named:product.image)
        producttitle.text=product.title
        productprice.text=product.price
    }
}
