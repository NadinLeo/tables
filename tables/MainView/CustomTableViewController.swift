//
//  CustomTableViewController.swift
//  tables
//
//  Created by Nadzeya Leanovich on 10/4/19.
//  Copyright © 2019 Nadzeya Leanovich. All rights reserved.
//

import UIKit

class CustomTableViewController: UITableViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let cellNib = UINib(nibName: "CustomTableViewCell", bundle: nil)
        self.tableView.register(cellNib, forCellReuseIdentifier: "customCell")
    }

    // MARK: - Table view data source
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = self.tableView.dequeueReusableCell(withIdentifier: "customCell", for: indexPath)
        cell.textLabel?.text = "Hi!!!!!"
        cell.textLabel?.backgroundColor = .clear
        return cell
    }
    
    override func tableView(_ tableView: UITableView, viewForFooterInSection section: Int) -> UIView? {
        let footerView = UIView(frame: CGRect(x: 0, y: 0, width: tableView.frame.size.width, height: 1))
        footerView.backgroundColor = UIColor.lightGray
        return footerView
    }
    
    // set height for footer
    override func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        return 1
    }
    
}
