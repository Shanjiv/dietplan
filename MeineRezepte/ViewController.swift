//
//  ViewController.swift
//  MeineRezepte
//
//  Created by Shanseevan Kanagaratnam on 15.05.16.
//  Copyright © 2016 Shanseevan Kanagaratnam. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource
{
    
    
    
    
    

    @IBOutlet weak var tableView: UITableView!
    // Tabelledaten
    var tableData = [String]() {
        //property observer: only if tableData changes its content
        didSet {
            tableView.reloadData()
        }
    }
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        tableData = ["Müsli", "Pizza"]
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    //methods for datasource and delegate protocols
    
    //Zeilen
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tableData.count
    }
    
    
    //Section
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    //
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCellWithIdentifier("rezeptRow")!
        
        cell.textLabel?.text = tableData[indexPath.row]
        
        return cell
        
    }

}


