//
//  categoray cell.swift
//  MA-shope
//
//  Created by ayman on 9/6/19.
//  Copyright © 2019 ayman. All rights reserved.
//

import UIKit
@IBDesignable
class categoray_cell: UITableViewCell {

    @IBOutlet weak var titlecell: UILabel!
    @IBOutlet weak var imagecell: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    
    func updateview(category:Category){
        titlecell.text=category.titlename
        imagecell.image=UIImage(named: category.imagename)
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
