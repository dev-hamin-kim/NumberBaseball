//
//  GameRecords.swift
//  NumberBaseball
//
//  Created by 김하민 on 11/8/24.
//

struct GameRecords {
    var records: [Int] = []
    
    public func showRecords() {
        guard !records.isEmpty else { return print("기록된 놀이가 없다네.") }
        
        for (index, record) in records.enumerated() {
            print((index + 1).description + "번째 놀이 : 시도 횟수 - " + record.description)
        }
    }
}
