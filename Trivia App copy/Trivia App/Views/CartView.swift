//
//  CartView.swift
//  Trivia App
//
//  Created by Sam on 4/3/24.
//

import Foundation
import SwiftUI

// Define a simple model for cart items
struct CartItem {
    var name: String
    var cost: Double
}

struct CartView: View {
    @EnvironmentObject var quizViewModel: QuizViewModel
    
    @Binding var navigationPath: NavigationPath
    // Sample cart items including the piggy bank with costs
    let cartItems = [
        CartItem(name: "Piggy Bank", cost: 9.99),
        CartItem(name: "Piggy Bank2", cost: 10.99),
        CartItem(name: "Piggy Bank3", cost: 1.99),
        // Add more CartItem instances here as needed
    ]
    
    // Compute the total cost of all items in the cart
    var totalCost: Double {
        cartItems.reduce(0) { $0 + $1.cost }
    }
    
    var body: some View {
        VStack {
            Text("Your Shopping Cart")
                .font(.headline)
                .padding()
            
            ScrollView {
                VStack(alignment: .leading) {
                    ForEach(cartItems.indices, id: \.self) { index in
                        HStack {
                            Image("piggy") // Assuming all items use the piggy image for simplicity
                                .resizable()
                                .scaledToFit()
                                .frame(width: 50, height: 50)
                            Text(cartItems[index].name)
                                .font(.title3)
                            Spacer()
                            Text("$\(cartItems[index].cost, specifier: "%.2f")")
                                .font(.title3)
                        }
                        
                        .padding(.bottom, 10)
                    }
                }
                .frame(maxWidth: .infinity)
            }
            
            Spacer()
            
            // Display the total cost
            HStack {
                Text("Total:")
                    .font(.title2)
                    .fontWeight(.bold)
                Spacer()
                Text("$\(totalCost, specifier: "%.2f")")
                    .font(.title2)
                    .fontWeight(.bold)
            }
            .padding()
            NavigationLink(destination: PaymentView(navigationPath: $navigationPath).environmentObject(quizViewModel)) {
                Text("CHECKOUT")
                    .foregroundColor(.white)
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(Color.purple)
                    .cornerRadius(10)
                
                Button(action: {
                    navigationPath = NavigationPath()
                }) {
                    Image(systemName: "homekit")
                        .padding()
                        .background(.purple)
                        .cornerRadius(5)
                        .foregroundStyle(.white)
                }
            }
            .padding() // Add padding around the button for spacing
        }
        .padding() // Add padding around the entire content for spacing
        
    }
}


struct CartView_Previews: PreviewProvider {
    static var previews: some View {
        CartView(navigationPath: .constant(NavigationPath()))
            .environmentObject(QuizViewModel())
    }
}
