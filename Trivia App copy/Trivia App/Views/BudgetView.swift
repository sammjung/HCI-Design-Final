//
//  BudgetView.swift
//  Trivia App
//
//  Created by Sam on 4/3/24.
//

import Foundation
import SwiftUI


struct BudgetView: View {
    
    @EnvironmentObject var quizViewModel: QuizViewModel
    
    @Binding var navigationPath: NavigationPath
    

    
    var body: some View {
        ZStack(alignment: .top) {
            VStack {
                Text("BUDGET?")
                    .font(.title2)
                    .fontWeight(.bold)
                NavigationLink(destination: EventView(navigationPath: $navigationPath).environmentObject(quizViewModel)) {
                    Text("$5-25")
                        .padding()
                        .foregroundColor(.white)
                        .background(RoundedRectangle(cornerRadius: 5, style: .continuous)
                                        .fill(.purple))
                }
                NavigationLink(destination: EventView(navigationPath: $navigationPath).environmentObject(quizViewModel)) {
                    Text("$25-50")
                        .padding()
                        .foregroundColor(.white)
                        .background(RoundedRectangle(cornerRadius: 5, style: .continuous)
                                        .fill(.purple))
                }
                NavigationLink(destination: EventView(navigationPath: $navigationPath).environmentObject(quizViewModel)) {
                    Text("$50-100")
                        .padding()
                        .foregroundColor(.white)
                        .background(RoundedRectangle(cornerRadius: 5, style: .continuous)
                                        .fill(.purple))
                }
                NavigationLink(destination: EventView(navigationPath: $navigationPath).environmentObject(quizViewModel)) {
                    Text("$100+")
                        .padding()
                        .foregroundColor(.white)
                        .background(RoundedRectangle(cornerRadius: 5, style: .continuous)
                                        .fill(.purple))
                }
            }
        }
    }
}




#Preview {
    BudgetView(navigationPath: .constant(NavigationPath()))
        .environmentObject(QuizViewModel())
}

