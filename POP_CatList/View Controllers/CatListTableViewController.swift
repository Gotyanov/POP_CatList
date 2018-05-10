//
//  CatListTableViewController.swift
//  POP_CatList
//
//  Created by Aleksey Gotyanov on 10.05.2018.
//  Copyright © 2018 Aleksey Gotyanov. All rights reserved.
//

import UIKit

class CatListTableViewController: UITableViewController, ListViewType {
    var itemsCount = 0
    var updateItemCallback: (CatTableViewCell, Int) -> () = { _, _ in }

    func refresh(section: Void, count: Int) {
        itemsCount = count
        tableView.reloadData()
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return itemsCount
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CatCell", for: indexPath) as! CatTableViewCell
        updateItemCallback(cell, indexPath.row)
        return cell
    }
}
