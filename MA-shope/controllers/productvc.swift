//
//  productvc.swift
//  MA-shope
//
//  Created by ayman on 9/7/19.
//  Copyright © 2019 ayman. All rights reserved.
//

import UIKit

class productvc: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource {
    
    @IBOutlet weak var collectionview: UICollectionView!
    
    private(set) public var productss=[products]()
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionview.dataSource=self
        collectionview.delegate=self
        
        
        // Do any additional setup after loading the view.
    }

    func initproduct(category:Category)
    {
        
        productss=dataservices.instance.getproducts(fortitel: category.titlename)
        navigationItem.title=category.titlename
    }
    
    
    
    //--------
    
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return productss.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if let cell=collectionview.dequeueReusableCell(withReuseIdentifier: "pcell",for: indexPath)as?Productview     {
        let product=productss[indexPath.row]
        cell.updateview(product: product)
                return cell
        }
        else
        {
            return Productview()
        }
    }
    
    
    
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
