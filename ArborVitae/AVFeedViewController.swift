//
//  AVFeedViewController.swift
//  ArborVitae
//
//  Created by Anant Vijay on 03/01/20.
//  Copyright © 2020 Anant Vijay. All rights reserved.
//

import UIKit

class AVFeedViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var feedTableView: UITableView!
    var feedDataSource = [AVFeedViewData]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        feedTableView.dataSource = self
        feedTableView.delegate = self
        feedTableView.reloadData()
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableView.automaticDimension
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return feedDataSource.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "", for: indexPath)
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
    }

}
