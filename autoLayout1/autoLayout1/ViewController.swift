//
//  ViewController.swift
//  autoLayout1
//
//  Created by Jacob Paul Hassler on 9/12/18.
//  Copyright © 2018 jphyr4. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
var arrColor = [UIColor]()
    override func viewDidLoad() {
        super.viewDidLoad()
        arrColor = [.fcolor,.scolor,.tcolor,.focolor,.ficolor]
        setupTableView()
        // Do any additional setup after loading the view, typically from a nib.
    }

    private func setupTableView(){
        let tableView = UITableView()
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(TableViewCell.classForCoder(),forCellReuseIdentifier: "cell")
        tableView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(tableView)
        
        NSLayoutConstraint.activate([
            tableView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor),
            tableView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor),
            tableView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            tableView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor)
            
            
            ])
    }

}

extension ViewController: UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! TableViewCell
       // cell.backgroundColor = indexPath.row%2 == 0 ? .blue : .red
        cell.cardView.backgroundColor = arrColor[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 88.0
    }
}

extension UIColor{
    static let fcolor = UIColor.init(red: 255/255, green: 89/255, blue: 94/255, alpha: 1)
    static let scolor = UIColor.init(red: 255/255, green: 202/255, blue: 58/255, alpha: 1)
    static let tcolor = UIColor.init(red: 138/255, green: 201/255, blue: 38/255, alpha: 1)
    static let focolor = UIColor.init(red: 25/255, green: 136/255, blue: 196/255, alpha: 1)
    static let ficolor = UIColor.init(red: 106/255, green: 76/255, blue: 147/255, alpha: 1)
}

