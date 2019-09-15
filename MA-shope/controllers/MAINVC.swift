//
//  ViewController.swift
//  MA-shope
//
//  Created by ayman on 9/6/19.
//  Copyright © 2019 ayman. All rights reserved.
//

import UIKit

class MAINVC: UIViewController,UITableViewDelegate,UITableViewDataSource {
    

    @IBOutlet weak var tableview: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
       tableview.dataSource=self
        tableview.delegate=self
    }
    
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataservices.instance.getcategories().count
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell:categoray_cell=tableView.dequeueReusableCell(withIdentifier: "category-cell") as? categoray_cell
        {
            let category=dataservices.instance.getcategories()[indexPath.row]
            cell.updateview(category: category)
            return  cell
        }
        else
        {
            return categoray_cell()
        }
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
             let category=dataservices.instance.getcategories()[indexPath.row]
        
                /*let btnback = UIBarButtonItem
                btnback.title=" "
                navigationItem.backBarButtonItem=btnback*/
                performSegue(withIdentifier: "productvc", sender: category)
            }
    
        
    
    /**/
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let productsvc=segue.destination as? productvc
        {
            let btn=UIBarButtonItem()
            btn.title=" "
            navigationItem.backBarButtonItem=btn
            assert(sender as? Category != nil)
                productsvc.initproduct(category: sender as! Category)
        }
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

