//
//  NetworkManager.swift
//  NormalTestAPI
//
//  Created by Kevin Morales on 7/19/21.
//

import Foundation
import Alamofire
import SwiftyJSON

protocol GetDataProtocol {
    func getData(completion: @escaping([HomeModel])->())
}

class NetworkManager: GetDataProtocol {
    
    static let shared: NetworkManager = {
        return NetworkManager()
    }()
    
    func getData(completion: @escaping ([HomeModel]) -> ()) {
        AF.request("https://jsonplaceholder.typicode.com/todos/").responseJSON { response in
            switch response.result {
            case .success:
                print("Success!")
                let data = JSON(response.data!)
                var home = [HomeModel]()
                for (_, subJson):(String, JSON) in data {
                    let users = HomeModel(userId: subJson["userId"].intValue,
                                          id: subJson["id"].intValue,
                                          title: subJson["title"].stringValue,
                                          completed: subJson["completed"].boolValue)
                    home.append(users)
                }
                completion(home)
            case .failure(let error):
                print("Error -> \(error.localizedDescription)")
            }
        }
    }
    
    
}
