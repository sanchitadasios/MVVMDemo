//
//  ContentView.swift
//  MVVMDemo
//
//  Created by Sanchita Das on 09/02/24.
//

import SwiftUI

struct ContentView: View {
    @StateObject private var vm = ViewModel()
    var body: some View {
        Toggle("Toggle Switch", isOn: $vm.isTurnedOn)
            .padding()
        HStack{
            Button("Increment") {
                vm.increment()
            }
            Text("\(vm.counter)")
                .bold()
                .foregroundStyle(.gray)
                .padding()
        }
        List(vm.itemList){ item in
                HStack{
                    Text(item.name)
                    Spacer()
                    Text(item.Description)
                }
        }
        .background(.thinMaterial)
        .listStyle(.plain)
        Button("Add Item") {
            vm.addItem()
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
