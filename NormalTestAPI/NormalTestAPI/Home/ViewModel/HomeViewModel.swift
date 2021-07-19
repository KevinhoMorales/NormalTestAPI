//
//  HomeViewModel.swift
//  NormalTestAPI
//
//  Created by Kevin Morales on 7/19/21.
//

import Foundation

class HomeViewModel {
    var homeArray = [HomeModel]()
    var homeArrayCount: Int {
        return homeArray.count
    }
    
    func getData(completion: @escaping ([HomeModel]) -> ()) {
        NetworkManager.shared.getData(completion: completion)
    }
}
