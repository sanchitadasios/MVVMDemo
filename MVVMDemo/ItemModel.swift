//
//  ItemModel.swift
//  MVVMDemo
//
//  Created by Sanchita Das on 09/02/24.
//

import Foundation

struct Item: Codable, Identifiable {
    var id = UUID()
    var name : String
    var Description : String
    
    
    static let itemExample = Item(name: "Flowers", Description: "They are pretty and gives life to every house")
}
