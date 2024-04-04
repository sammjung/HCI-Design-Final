//
//  QuestionView.swift
//  Trivia App
//
//  Created by Sam on 3/10/24.
//

import Foundation
import SwiftUI

//import AVFoundation
//
//class Test {
//    
//    var player: AVAudioPlayer!
//    
//    func playSadAudio() {
//        print(Bundle.main.bundlePath)
//        guard let url = Bundle.main.url(forResource: "nonono", withExtension: "wav") else {
//            print("File not found")
//            return
//        }
//        
//        do {
//            player = try AVAudioPlayer(contentsOf: url)
//            player.play()
//        } catch {
//            print("Could not load file: \(error)")
//        }
//    }
//    
//    func playHappyAudio() {
//        print(Bundle.main.bundlePath)
//        guard let url = Bundle.main.url(forResource: "happy", withExtension: "wav") else {
//            print("File not found")
//            return
//        }
//        
//        do {
//            player = try AVAudioPlayer(contentsOf: url)
//            player.play()
//        } catch {
//            print("Could not load file: \(error)")
//        }
//    }
//}


struct QuestionView: View {
    
    @EnvironmentObject var quizViewModel: QuizViewModel
//    let soundPlayer = Test()
    @Binding var navigationPath: NavigationPath
    
    var body: some View {
        ZStack(alignment: .topTrailing) {
            ScoreView( navigationPath: $navigationPath).environmentObject(quizViewModel)
            VStack {
                Spacer()
                Spacer()
                if quizViewModel.questions.indices.contains(quizViewModel.currentQuestionIndex) {
                    let currentQuestion = quizViewModel.questions[quizViewModel.currentQuestionIndex]
                    Text(currentQuestion.text)
                        .font(.title2)
                        .fontWeight(.bold)
                        .frame(width: 300, height: 400)
                        .fixedSize(horizontal: false, vertical: true)

                    ForEach(Array(currentQuestion.answers.enumerated()), id: \.offset) { index, answer in
                        Button(action: {
                            if answer == currentQuestion.correctAnswer {
//                                soundPlayer.playHappyAudio()
                                quizViewModel.submitAnswer(isCorrect: true)
                            } else {
//                                soundPlayer.playSadAudio()
                                quizViewModel.submitAnswer(isCorrect: false)
                            }
                        }) {
                            Text(answer)
                                .padding()
                                .background(.green)
                                .foregroundColor(.white)
                                .cornerRadius(5)
                        }
                    }
                } else {
                    Text("You're finished!")
                }
            }
            .frame(width: 400, height: 600)
        }
        .navigationBarBackButtonHidden(true)
        .navigationTitle("")
        .navigationBarTitleDisplayMode(.inline)
    }
}




#Preview {
    QuestionView(navigationPath: .constant(NavigationPath()))
        .environmentObject(QuizViewModel())
}

//struct QuestionView_Previews: PreviewProvider {
//    static var previews: some View {
//        QuestionView(question: Question(text: "test", answers: ["a", "b", "c", "d"], correctAnswer: "c"))
//            .environmentObject(QuizViewModel())
//    }
//}
