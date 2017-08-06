//
//  quiz.swift
//  Quiz
//
//  Created by 與野裕士 on 2017/08/06.
//  Copyright © 2017年 與野裕士. All rights reserved.
//

import UIKit

class Quiz {
    
    var question: String!
    var answer1: String!
    var answer2: String!
    var answer3: String!
    var answer4: String!
    var answerCount1: Int = 0
    var answerCount2: Int = 0
    var answerCount3: Int = 0
    var answerCount4: Int = 0
    
    init(answer1: String, answer2: String, answer3: String, answer4: String, answerCount1: Int, answerCount2: Int, answerCount3: Int, answerCount4: Int, question: String) {
        self.answer1 = answer1
        self.answer2 = answer2
        self.answer3 = answer3
        self.answer4 = answer4
        self.answerCount1 = answerCount1
        self.answerCount2 = answerCount2
        self.answerCount3 = answerCount3
        self.answerCount4 = answerCount4
        self.question = question
        
        
    }
    
    
        
        
    
    
    
}
