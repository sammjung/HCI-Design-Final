//
//  WelcomeView.swift
//  Trivia App
//
//  Created by Sam on 3/12/24.
//

import SwiftUI


struct WelcomeView: View {
    @State private var navigateToQuestionView = false
    @State private var navigationPath = NavigationPath()
    
    var body: some View {
        NavigationStack(path: $navigationPath) {
            VStack(alignment: .leading) {
                Text("BAZAAR")
                    .font(.custom("AvrileSans-Italic", size: 40))
                    .italic()


                Text("find serendipity.")
                Text("curated events in your local city.")
                NavigationLink("BUY", value: "Question")
        
                .padding()
                .foregroundColor(.white)
                .background(RoundedRectangle(cornerRadius: 20, style: .continuous)
                    .fill(.pink))
                .navigationDestination(for: String.self) {_ in 
                    DateView( navigationPath: $navigationPath)
                        .environmentObject(QuizViewModel())
                    
                    
                            }
                NavigationLink("SELL", value: "Question")
        
                .padding()
                .foregroundColor(.white)
                .background(RoundedRectangle(cornerRadius: 20, style: .continuous)
                    .fill(.pink))
                .navigationDestination(for: String.self) {_ in
                    QuestionView( navigationPath: $navigationPath)
                        .environmentObject(QuizViewModel())
                    
                    
                            }
                NavigationLink("TRADE", value: "Question")
        
                .padding()
                .foregroundColor(.white)
                .background(RoundedRectangle(cornerRadius: 20, style: .continuous)
                    .fill(.pink))
                .navigationDestination(for: String.self) {_ in
                    QuestionView( navigationPath: $navigationPath)
                        .environmentObject(QuizViewModel())
                    
                    
                            }
                NavigationLink("I'm FEELING LUCKY", value: "Question")
        
                .padding()
                .foregroundColor(.white)
                .background(RoundedRectangle(cornerRadius: 20, style: .continuous)
                    .fill(.pink))
                .navigationDestination(for: String.self) {_ in
                    QuestionView( navigationPath: $navigationPath)
                        .environmentObject(QuizViewModel())
                    
                    
                            }
            }
        }
    }
    
}

#Preview {
    WelcomeView()
}
