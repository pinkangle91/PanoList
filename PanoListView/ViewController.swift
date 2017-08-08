//
//  ViewController.swift
//  PanoListView
//
//  Created by Amy on 2017/7/14.
//  Copyright © 2017年 Amy. All rights reserved.
//

import UIKit
import CoreMotion


class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.register(UINib(nibName: "PanoTableViewCell", bundle: nil), forCellReuseIdentifier: "PanoCell")
        
        tableView.delegate = self
        tableView.dataSource = self
        tableView.estimatedRowHeight = 120
    }
    
    func panGesture() {
        
    }
}

extension ViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell:PanoTableViewCell = tableView.dequeueReusableCell(withIdentifier: "PanoTableViewCell") as! PanoTableViewCell
        let image = UIImage.init(named: "park_2048.jpg")
        cell.loadPanoImage(image: image!)
        cell.panoView.panGestureRecognizer.removeTarget(self, action: nil)
        cell.panoView.panGestureRecognizer.addTarget(self, action: #selector(panGesture))
        return cell
    }
}

extension ViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 120
    }
}
