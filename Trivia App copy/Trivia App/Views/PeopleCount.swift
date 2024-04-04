//
//  PeopleCount.swift
//  Trivia App
//
//  Created by Sam on 4/3/24.
//

import Foundation
import SwiftUI


struct PeopleCount: View, Identifiable {
    
    let id = UUID() // Adding an ID for navigation
    @EnvironmentObject var quizViewModel: QuizViewModel
    @Binding var navigationPath: NavigationPath
    

    
    var body: some View {
        ZStack(alignment: .top) {
            VStack {
                Text("HOW MANY PEOPLE?")
                    .font(.title2)
                    .fontWeight(.bold)
                NavigationLink(destination: BudgetView(navigationPath: $navigationPath).environmentObject(quizViewModel)) {
                    Text("1")
                        .padding()
                        .foregroundColor(.white)
                        .background(RoundedRectangle(cornerRadius: 5, style: .continuous)
                                        .fill(.purple))
                }
                NavigationLink(destination: BudgetView(navigationPath: $navigationPath).environmentObject(quizViewModel)) {
                    Text("2")
                        .padding()
                        .foregroundColor(.white)
                        .background(RoundedRectangle(cornerRadius: 5, style: .continuous)
                                        .fill(.purple))
                }
                NavigationLink(destination: BudgetView(navigationPath: $navigationPath).environmentObject(quizViewModel)) {
                    Text("3")
                        .padding()
                        .foregroundColor(.white)
                        .background(RoundedRectangle(cornerRadius: 5, style: .continuous)
                                        .fill(.purple))
                }
                NavigationLink(destination: BudgetView(navigationPath: $navigationPath).environmentObject(quizViewModel)) {
                    Text("4+")
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
    PeopleCount(navigationPath: .constant(NavigationPath()))
        .environmentObject(QuizViewModel())
}

