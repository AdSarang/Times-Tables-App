//
//  ViewController.swift
//  Times Tables
//
//  Created by Advait on 18/06/17.
//  Copyright © 2017 Advait. All rights reserved.
//

import UIKit

class ViewController: UIViewController , UITableViewDelegate, UITableViewDataSource{

    @IBOutlet weak var table: UITableView!
    @IBOutlet weak var slider: UISlider!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 50
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: UITableViewCellStyle.default , reuseIdentifier: "Cell")
        
        cell.textLabel?.text = String((Int(slider.value))*(indexPath.row+1))
     
        return cell
        
    }
    
    @IBAction func sliderChanged(_ sender: Any) {
        table.reloadData()
    }
    


}

