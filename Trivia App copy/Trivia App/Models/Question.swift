//
//  Question.swift
//  Trivia App
//
//  Created by Sam on 3/10/24.
//

import Foundation

struct Question {
  var text: String // The question text
// var imageName: String // Name of the local image file associated with the question
  var answers: [String] // The possible answers
  var correctAnswer: String // The correct answer
}
