//
//  PastBoxesVC.swift
//  SubscriptionBox
//
//  Created by Mondale on 3/5/20.
//  Copyright © 2020 Mondale. All rights reserved.
//

import UIKit

class PastBoxesVC: UIViewController {
    
    let tableView = UITableView()
    let items = ["Dog Treats", "Dog Food", "Fruit Salad", "Torta"]
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        configure()
    }
    
    func configure(){
        view.addSubview(tableView)
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.rowHeight = 100
        
        tableView.register(SBTableViewCell.self, forCellReuseIdentifier: "SBTableViewCell")
        tableView.delegate = self
        tableView.dataSource = self
        
        
        NSLayoutConstraint.activate([
            tableView.topAnchor.constraint(equalTo: view.topAnchor),
            tableView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            tableView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor)

        
        
        ])
    }
    
}


extension PastBoxesVC: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        items.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "SBTableViewCell", for: indexPath) as! SBTableViewCell
        cell.boxImageView.image = UIImage(named: "treat")
        cell.dateLabel.text = items[indexPath.row]
        return cell
    }
    
    
    
}

extension PastBoxesVC : UITableViewDelegate{

}
