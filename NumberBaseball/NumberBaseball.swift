//
//  NumberBaseball.swift
//  NumberBaseball
//
//  Created by 김하민 on 11/6/24.
//

import Foundation

struct NumberBaseball {
    
    var answer: [Character]
    
    init() {
        self.answer = []
    }
    
    mutating func newGame() {
        // 새 게임을 시작하고자 할 때 실행하는 메서드입니다.
        // 세 자리 숫자, 첫 번째 자리는 0이 없으며, 중복되는 숫자 또한 없습니다.
        
        answer = []
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
    
    // 입력된 값에서 몇 개가 스트라이크고 볼인지 구분해줍니다.
    public func umpireCall(for input: [Character]) -> (strike: Int, ball: Int) {
        var (strike, ball) = (0, 0)
        
        for (index, char) in input.enumerated() {
            if self.answer[index] == char {
                strike += 1
            } else if self.answer.contains(char) {
                ball += 1
            }
        }
        return (strike, ball)
    }
}
