//
//  ContentView.swift
//  CoffeeOrderingApp
//
//  Created by Guilherme on 23/07/21.
//

import SwiftUI

struct ContentView: View {
    
    let coloredNavAppearance = UINavigationBarAppearance()
    
    @ObservedObject private var orderListVM = OrderListViewModel()
    @State private var showModal: Bool = false
    
    init() {
        coloredNavAppearance.configureWithOpaqueBackground()
        coloredNavAppearance.backgroundColor = .systemBlue
        coloredNavAppearance.titleTextAttributes = [.foregroundColor: UIColor.white]
        coloredNavAppearance.largeTitleTextAttributes = [.foregroundColor: UIColor.white]
        
        UINavigationBar.appearance().standardAppearance = coloredNavAppearance
        UINavigationBar.appearance().scrollEdgeAppearance = coloredNavAppearance
    }
    
    private func reloadOrders() {
        self.orderListVM.fetchOrders()
    }
    
    private func showAddCoffeeOrderView() {
        self.showModal = true
    }
    
    var body: some View {
        
        NavigationView {
            
            OrderListView(orders: self.orderListVM.orders)
                
                .navigationBarTitle("Coffee Orders")
                .navigationBarItems(trailing: Button(action: showAddCoffeeOrderView) {
                    Image(systemName: "plus")
                        .foregroundColor(Color.white)
                })
            
                .sheet(isPresented: $showModal, onDismiss: {
                    self.reloadOrders()
                }, content: {
                    AddCoffeeOrderView(isPresented: self.$showModal)
                })
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
