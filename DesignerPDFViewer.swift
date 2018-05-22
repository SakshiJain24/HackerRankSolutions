//
//  DesignerPDFViewer.swift
//  
//
//  Created by Sakshi Jain on 08/05/18.
//

import Foundation

let inputLengthString = readLine()!
var LengthArr : [String] = inputLengthString.components(separatedBy: " ")

let inputString = readLine()!

var lengthDict : NSMutableDictionary = [:] as NSMutableDictionary
var counter = 0
for i in "abcdefghijklmnopqrstuvwxyz"{
    lengthDict["\(i)"] = Int(LengthArr[counter])
    counter += 1
}

let charWidth = 1
var area = 0
var MaxHeight = 0

for i in inputString{
    if let length : Int = lengthDict.value(forKey:"\(i)") as? Int
    {
        if MaxHeight < length
        {
            MaxHeight = length
        }
    }
}

area = charWidth*MaxHeight*inputString.count
print(area)
