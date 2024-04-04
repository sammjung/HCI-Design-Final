//
//  PaymentView.swift
//  Trivia App
//
//  Created by Sam on 4/3/24.
//

import Foundation
import SwiftUI

struct PaymentView: View {
    @EnvironmentObject var quizViewModel: QuizViewModel
    
    @Binding var navigationPath: NavigationPath
    
    var body: some View {
        VStack(spacing: 20) {
            Text("Choose Payment Method")
                .font(.headline)
            
            // PayPal Button
            Button(action: {
                // Handle PayPal payment
                print("PayPal Selected")
            }) {
                HStack {
                    Image("paypalIcon") // Replace with your actual PayPal icon asset name
                        .resizable()
                        .scaledToFit()
                        .frame(width: 24, height: 24)
                    Text("Pay with PayPal")
                }
                .padding()
                .frame(maxWidth: .infinity)
                .background(Color.blue)
                .foregroundColor(.white)
                .cornerRadius(10)
            }
            
            // Google Pay Button
            Button(action: {
                // Handle Google Pay payment
                print("Google Pay Selected")
            }) {
                HStack {
                    Image("googlePayIcon") // Replace with your actual Google Pay icon asset name
                        .resizable()
                        .scaledToFit()
                        .frame(width: 24, height: 24)
                    Text("Pay with Google Pay")
                }
                .padding()
                .frame(maxWidth: .infinity)
                .background(Color.gray)
                .foregroundColor(.black)
                .cornerRadius(10)
            }
            
            // Amazon Pay Button
            Button(action: {
                // Handle Amazon Pay payment
                print("Amazon Pay Selected")
            }) {
                HStack {
                    Image("amazonPayIcon") // Replace with your actual Amazon Pay icon asset name
                        .resizable()
                        .scaledToFit()
                        .frame(width: 24, height: 24)
                    Text("Pay with Amazon Pay")
                }
                .padding()
                .frame(maxWidth: .infinity)
                .background(Color.orange)
                .foregroundColor(.white)
                .cornerRadius(10)
            }
            
            // Apple Pay Button
            Button(action: {
                // Handle Apple Pay payment
                print("Apple Pay Selected")
            }) {
                HStack {
                    Image("applePayIcon") // Replace with your actual Apple Pay icon asset name
                        .resizable()
                        .scaledToFit()
                        .frame(width: 24, height: 24)
                    Text("Pay with Apple Pay")
                }
                .padding()
                .frame(maxWidth: .infinity)
                .background(Color.gray)
                .foregroundColor(.black)
                .cornerRadius(10)
            }
        }
        .padding()
    }
}

struct PaymentView_Previews: PreviewProvider {
    static var previews: some View {
        PaymentView(navigationPath: .constant(NavigationPath()))
            .environmentObject(QuizViewModel())
    }
}
