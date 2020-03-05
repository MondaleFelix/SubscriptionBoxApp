//
//  HistoryVC.swift
//  SubscriptionBox
//
//  Created by Mondale on 3/5/20.
//  Copyright © 2020 Mondale. All rights reserved.
//

import UIKit

class HistoryVC: UIViewController {

    let tableView = UITableView()
    let dates = ["February 2020", "January 2020", "December 2019", "November 2019"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureTableView()
        navigationController?.navigationBar.prefersLargeTitles = true
    }
    
    func configureTableView(){
        view.addSubview(tableView)
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.rowHeight = 100
        tableView.register(SBTableViewCell.self, forCellReuseIdentifier: "SBTableViewCell")
        tableView.dataSource = self
        tableView.delegate = self
        
        NSLayoutConstraint.activate([
            tableView.topAnchor.constraint(equalTo: view.topAnchor),
            tableView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            tableView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor),

        
        ])
    }
}


extension HistoryVC: UITableViewDelegate{
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let nextVC = PastBoxesVC()
        nextVC.title = dates[indexPath.row]
        navigationController?.pushViewController(nextVC, animated: true)
    }
    
}

extension HistoryVC: UITableViewDataSource{
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dates.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "SBTableViewCell") as! SBTableViewCell
        cell.boxImageView.image = UIImage(named: "box.png")
        cell.dateLabel.text = dates[indexPath.row]
        return cell
        
    }
    
    
    
}
