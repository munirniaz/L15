//
//  PizzaView.swift
//  M2L12 Challenge Solution
//
//  Created by Munir Niaz on 7/26/22.
//

import SwiftUI

struct PizzaView: View {
    var pizza: Pizza
    var body: some View {
       
        HStack{
            Image(pizza.image)
            
            VStack{
                Text(pizza.name)
                ForEach(pizza.toppings,id:\.self){
                    p in
                    Text(p)
                }
                
                
            }
        }
        
    }
}

struct PizzaView_Previews: PreviewProvider {
    static var previews: some View {
        
        
        PizzaView(pizza: Pizza(id: UUID(), name: "Test", toppings: ["topping","topping2"], image: "meatLover"))
    }
}
