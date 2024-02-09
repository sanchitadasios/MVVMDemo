//
//  Content-ViewModel.swift
//  MVVMDemo
//
//  Created by Sanchita Das on 09/02/24.
//

import Foundation
import SwiftUI

extension ContentView {
    @MainActor class ViewModel: ObservableObject{
        @Published var isTurnedOn : Bool = false
        @Published var counter : Int = 0
        @Published var itemList = [Item]()
        
        func increment(){
            counter += 1
        }
        func addItem() {
            let randomItems = ["Cloth Dryer","Vase","Cosmetics","Bed","Table","Desk"]
            let item = randomItems.randomElement()!
            
            let newItem = Item(name: item, Description: "Item:\(itemList.count+1)")
            withAnimation {
                itemList.insert(newItem, at: 0)
            }
        }
    }
}

