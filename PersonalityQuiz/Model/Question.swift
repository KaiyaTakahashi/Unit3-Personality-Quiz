//
//  Question.swift
//  PersonalityQuiz
//
//  Created by Kaiya Takahashi on 2022-05-07.
//

import Foundation

struct Question {
    var text: String
    var type: ResponseType
    var answers: [Answer]
}

enum ResponseType {
    case single, multiple, ranged
}

struct Answer {
    var text: String
    var type: AnimalType
}

enum AnimalType: Character {
    case dog = "🐶", cat = "🐱", rabbit = "🐰", turtle = "🐢"
    
    var definition: String {
        switch self {
        case .dog:
            return "You are incredibly outgoing. You surround yourself the people you love and enjoy activities with your friends."
        case .cat:
            return "Mischieveous, yet mild-tempered, you enjoy doing the things on your own terms."
        case .rabbit:
            return "You love everything that's soft. You are healthy and full of energy."
        case .turtle:
            return "You are wise beyound your years, and you focus on the details. Slow and steady wins the race."
        }
    }
}
