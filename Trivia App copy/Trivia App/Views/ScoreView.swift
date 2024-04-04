//
//  ScoreView.swift
//  Trivia App
//
//  Created by Sam on 3/10/24.
//

import Foundation
import SwiftUI

struct ScoreView: View {
    @EnvironmentObject var QuizViewModel: QuizViewModel
    @Binding var navigationPath: NavigationPath
    var body: some View {
        VStack {
            HStack {
                Text("Score: \(QuizViewModel.score)")
                    .font(.title)
                    .padding()
                Spacer()
                Spacer()
                Spacer()
                Spacer()
                Button(action: {
                    QuizViewModel.resetQuiz()
                }) {
                    Image(systemName: "arrow.circlepath")
                        .padding()
                        .background(.pink)
                        .cornerRadius(5)
                        .foregroundStyle(.white)
                }
                Button(action: {
                    navigationPath = NavigationPath()
                }) {
                    Image(systemName: "homekit")
                        .padding()
                        .background(.pink)
                        .cornerRadius(5)
                        .foregroundStyle(.white)
                }
                Spacer()
            }
            Spacer()
        }
    }
}

#Preview {
    ScoreView(navigationPath: .constant(NavigationPath()))
        .environmentObject(QuizViewModel())
}
