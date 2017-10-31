//
//  HistoryViewController.swift
//  Simple Calc
//
//  Created by Nestor Qin on 10/25/17.
//  Copyright © 2017 Nestor Qin. All rights reserved.
//

import UIKit

class HistoryViewController: UITableViewController {
    
    @IBOutlet var historyTable: UITableView!
    var historys: [String] = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableView.register(UITableViewCell.self, forCellReuseIdentifier: "historyCell")
    }
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.historys.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "historyCell")! //1.
        let text = self.historys[indexPath.row] //2.
        cell.textLabel?.text = text //3.
        cell.textLabel?.textColor = UIColor.white
        cell.backgroundColor = UIColor.black
        return cell //4.
    }
}
