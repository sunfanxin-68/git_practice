//
//  Question.swift
//  
//
//  Created by 孫凡欣 on 2023/04/04.
//

import Foundation

//创建问题模型

struct Question {
    let questionText: String
    let possibleAnswers: [String]
    let correctAnswerIndex: Int
}


struct ContentView: View {
 
    let question = Question(
        questionText: "What was the first computer bug?",
        possibleAnswers: ["Ant", "Beetle", "Moth", "Fly"],
        correctAnswerIndex: 2)
 
    let mainColor = Color(red: 20/255, green: 28/255, blue: 58/255)
    let accentColor = Color(red: 48/255, green: 105/255, blue: 240/255)
 
    var body: some View {
        // 查看实现
        Text(question.questionText)
    }
}
