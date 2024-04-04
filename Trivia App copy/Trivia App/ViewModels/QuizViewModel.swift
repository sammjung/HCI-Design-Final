//
//  QuizViewModel.swift
//  Trivia App
//
//  Created by Sam on 3/10/24.
//

import Foundation

class QuizViewModel: ObservableObject {
  // MARK: - Properties
  @Published var questions: [Question] = [] // Array to store questions
  @Published var currentQuestionIndex: Int = 0 // Index of the current question
  @Published var selectedAnswer: String? = nil // The user's selected answer
  @Published var score: Int = 0 // The user's score
  @Published var quizFinished: Bool = false // Flag to determine if the quiz has finished
    @Published var randomTicket: Bool = false

  // MARK: - Initialization
  init() {
    loadQuestions() // Call to load questions into the array
  }
                                                  
  // MARK: - Methods

  /// Initializes questions array with data.
  func loadQuestions() {
    // Hard-coded questions with local images
    self.questions = [
      // Add questions here. Example:
                  // Add questions here. Example:
         Question(text: "Can a crocodile stick its tongue out?",
                  answers: ["Yes", "No"],
                  correctAnswer: "No"),
         Question(text: "Is nutmeg poisonous?",
                  answers: ["Yes", "No"],
                  correctAnswer: "No"),
         Question(text: "What domestic animal is not in the Bible?",
                  answers: ["Dog", "Cat", "Rat", "Bat"],
                  correctAnswer: "Cat"),
         Question(text: "How far can the human heart squirt blood?",
                  answers: ["10 feet", "20 feet", "30 feet", "Weird question bro"],
                  correctAnswer: "30 feet")
    ]
  }

  /// Processes the selected answer, updates the score and advances to the next question.
    func submitAnswer(isCorrect: Bool) {
        if isCorrect {
            score += 1
        }
        currentQuestionIndex += 1
        
        if currentQuestionIndex >= questions.count {
                quizFinished = true
        }
  }
    
    func setRandomTicket() {
        randomTicket = true
    }

  /// Resets the quiz to its initial state for a new game.
  func resetQuiz() {
      currentQuestionIndex = 0
      score = 0
      quizFinished = false
      loadQuestions()
    // Functionality to be implemented: reset current question index, score, and quiz finished status; reload questions.
  }
}
