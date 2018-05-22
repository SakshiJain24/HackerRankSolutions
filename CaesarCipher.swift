//
//  CaesarCipher.swift
//  
//
//  Created by Sakshi Jain on 10/01/18.
//

import Foundation

let len = Int(readLine()!)!
let inputString = readLine()!
let k = Int(readLine()!)!

var arr = Array(inputString)
let a : Int = Int("a".utf8CString[0]) //97
let z : Int = Int("z".utf8CString[0]) //122
let A : Int = Int("A".utf8CString[0]) //65
let Z : Int = Int("Z".utf8CString[0]) //90
var formattedOutput = ""
let offsetFactor = k%26

for var index in arr
{
    var temp : Int = (index.unicodeScalars.first?.hashValue)!
    if (temp >= a && temp <= z)
    {
        temp = temp + offsetFactor
        if (temp > z)
        {
            temp = (a + abs(temp - z)) - 1
        }
    }
    else if (temp >= A && temp <= Z)
    {
        temp = temp + offsetFactor
        if (temp > Z)
        {
            temp = (A + abs(temp - Z)) - 1
        }
    }
    
    index = Character(UnicodeScalar(temp)!)
    formattedOutput += String(index)
}

print(formattedOutput)
