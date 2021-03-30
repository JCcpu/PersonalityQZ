//
//  QuestionData.swift
//  QuizGame
//
//  Created by A.M. Class on 3/25/21.
//

import Foundation

struct Question {
    var text: String
    var type: ResponseType
    var answer: [Answer]
}

enum ResponseType {
    case question1, question2, question3
}

struct Answer{
    var text: String
    var type: CharacterType
}

enum CharacterType: String {
    case cat = "Cat", dog = "Dog", rabbit = "Rabbit", bird = "Bird"

var definition: String {
    switch self {
    case .cat:
        return "You may sometimes be rude and overbearing but inside you are kind and affectionate, you spend most of your days alone but if you so choose you could spend your day with someone else"
    case .dog:
        return "You are playful, curious, and sociabal. You can be aggressive sometimes if someone doesn't treat you or your frinds right"
    case .rabbit:
        return "Intelligent, affectionate, sociable, and sometimes a little shy. You can also be bratty, willful, destructive and even vengeful. It take a special type of person to be able to coexist happily with such a complex, demanding little soul."
    case .bird:
        return "You are free nothing can describe you, you describe yourself the way you want to represent yourself to others. Between your groups you may be the funny one, the party player, the shy one, or anything you choose who you want to be with others and yourself."
        }
    }
}
