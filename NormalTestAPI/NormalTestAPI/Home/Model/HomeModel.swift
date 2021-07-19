//
//  HomeModel.swift
//  NormalTestAPI
//
//  Created by Kevin Morales on 7/19/21.
//

import Foundation

struct HomeModel: Codable {
    var userId: Int
    var id: Int
    var title: String
    var completed: Bool
}
