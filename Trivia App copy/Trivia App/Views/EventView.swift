//
//  EventView.swift
//  Trivia App
//
//  Created by Sam on 4/3/24.
//

import Foundation
import SwiftUI


struct EventView: View {
    
    @EnvironmentObject var quizViewModel: QuizViewModel
    
    @Binding var navigationPath: NavigationPath
    
    let pig = UIImage(named: "piggy.png");
    
    var body: some View {
        ZStack(alignment: .top) {
            VStack {
                Text("We found an event!")
                    .font(.title2)
                    .fontWeight(.bold)
                    
                Image("piggy")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 100, height: 100)
                
                Text("Piggy Run")
                Text("Listed by Bob")
                Text("Date: 4/4/4444")
                Text("Tickets Available: 9")
                Text("Price: $20")
                Text("")
                Text("")
                Text("watch pigs race at this local event! this event is hosted in center city next to the pig farm.")
                NavigationLink(destination: CartView(navigationPath: $navigationPath).environmentObject(quizViewModel)) {
                    Text("BUY TICKETS")
                        .padding()
                        .foregroundColor(.white)
                        .background(RoundedRectangle(cornerRadius: 5, style: .continuous)
                                        .fill(.purple))
                }
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
        }
    }
}




#Preview {
    EventView(navigationPath: .constant(NavigationPath()))
        .environmentObject(QuizViewModel())
}

