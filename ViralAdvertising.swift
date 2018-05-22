//
//  ViralAdvertising.swift
//  
//
//  Created by Sakshi Jain on 10/05/18.
//

import Foundation

let inputString = Int(readLine()!)!

let dayOnePeople = 5
var otherDayPeople = 5

let shareEachDay = 3
var prevLikeResult = 0

for _ in 0..<inputString{
    let likeResult = floor(Double(otherDayPeople/2))
    otherDayPeople = Int(likeResult)*Int(shareEachDay)
    
    prevLikeResult += Int(likeResult)
}

print(prevLikeResult)
