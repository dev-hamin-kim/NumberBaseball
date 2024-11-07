//
//  main.swift
//  NumberBaseball
//
//  Created by 김하민 on 11/6/24.
//

import Foundation

var game = NumberBaseball()
var hadRightGuess = false

print("그럼 놀이를 시작하지. 규칙은 알고 있을 것이라 믿네.")
game.newGame()
print("숫자를 입력하게나.")

while !hadRightGuess {
    
    let input = Array(readLine()!)
    
    if input == game.answer {
        hadRightGuess = true
        print("축하하네, 정답이군.")
        break
    }
    
    if input.first == "0" {
        print("첫 번째 자리는 0이 들어가지 않는다네.")
    } else if input.count == 3
        && input[0] != input[1]
        && input[0] != input[2]
        && input[1] != input[2] {
        print("\(game.umpireCall(for: input).strike) 스트라이크, \(game.umpireCall(for: input).ball) 볼.")
    } else {
        print("3자리의 서로 중복되지 않는 숫자만 입력이 가능하네.")
    }
    
}


