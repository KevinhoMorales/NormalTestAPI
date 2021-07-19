//
//  HomeViewController.swift
//  NormalTestAPI
//
//  Created by Kevin Morales on 7/19/21.
//

import UIKit

class HomeViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    let viewModel = HomeViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpCell()
        getData()
        // Do any additional setup after loading the view.
    }
    
    private func setUpCell() {
        let cell = UINib(nibName: "HomeTableViewCell", bundle: nil)
        tableView.register(cell, forCellReuseIdentifier: "cell")
        tableView.tableFooterView = UIView()
    }
    
    private func getData() {
        viewModel.getData { [self] homeArray in
            viewModel.homeArray = homeArray
            DispatchQueue.main.async {
                tableView.reloadData()
            }
        }
    }

}

extension HomeViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel.homeArrayCount
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell") as! HomeTableViewCell
        let home = viewModel.homeArray[indexPath.row]
        cell.setUpCell(home: home)
        return cell
    }
    
    
}
