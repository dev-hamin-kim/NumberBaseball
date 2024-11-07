//
//  NumberBaseball.swift
//  NumberBaseball
//
//  Created by 김하민 on 11/6/24.
//

import Foundation

struct NumberBaseball {
    
    var answer: String
    
    init() {
        self.answer = ""
    }
    
    mutating func newGame() {
        // 새 게임을 시작하고자 할 때 실행하는 메서드입니다.
        // 세 자리 숫자, 첫 번째 자리는 0이 없으며, 중복되는 숫자 또한 없습니다.
        
        answer = ""
        var availableNumbers: [Character] = Array("0123456789")
        
        while answer.count < 3 {
            // 첫번째 자리엔 0이 올 수 없습니다.
            if answer.count == 0 {
                // 그러므로, 1부터 9까지의 범위 중 랜덤한 숫자를 뽑아 randomNumber로 지정해준 뒤, answer에 추가해줍니다.
                let randomNumber = Character(Int.random(in: 1...9).description)
                answer.append(randomNumber)
                
                // 사용 가능한 숫자의 목록에서 answer에 추가했던 숫자를 지워줍니다.
                availableNumbers.removeAll(where: { $0 == randomNumber })
            } else {
                let randomIndex = Int.random(in: 0...availableNumbers.count - 1)

                answer.append(availableNumbers[randomIndex])
            }
        }
        
    }
}
