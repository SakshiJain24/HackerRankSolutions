//
//  KeywordTranspositionCipher.swift
//  
//
//  Created by Sakshi Jain on 20/12/17.
//

import Foundation

let n_input = Int(readLine()!)!

for _ in 1...n_input
{
    let input = readLine()!
    let encryptedMsg = readLine()!
    var encryptedMsgArray = Array(encryptedMsg).map { String($0) }
    
    var inputArray = Array(input).map { String($0) }
    
    var insertCounter = 0
    var uniqueInputArr : [String] = [String()]
    uniqueInputArr.removeAll()
    
    //Get Unique Chracter from inputArray
    for i in 0..<inputArray.count
    {
        if !(uniqueInputArr.contains(inputArray[i]))
        {
            uniqueInputArr.append(inputArray[i])
        }
    }
    
    //Keeping copy of input array in sorted way
    let uniqueInputArrCopy = uniqueInputArr
    
    var uniqueInputSortedArr = uniqueInputArrCopy.sorted { $0.localizedCaseInsensitiveCompare($1) == ComparisonResult.orderedAscending }
    
    // Create Alphabatical Map
    let alphabetArray = ["A","B","C","D","E","F","G","H","I","J","K","L","M","N","O","P","Q","R","S","T","U","V","W","X","Y","Z"]
    for i in alphabetArray
    {
        if !(inputArray.contains(i))
        {
            if (insertCounter == uniqueInputArr.count)
            {
                insertCounter = 0
            }
            
            var temp = uniqueInputArr[insertCounter]
            temp = "\(temp)\(i)"
            
            uniqueInputArr[insertCounter] = temp
            
            insertCounter += 1
        }
    }
    
    // Creating sequence on final charatcters to be mapped
    var mappingString : String = String()
    for i in 0..<uniqueInputSortedArr.count
    {
        if let index = uniqueInputArrCopy.index(of: uniqueInputSortedArr[i])
        {
            mappingString = "\(mappingString)\(uniqueInputArr[index])"
        }
    }
    
    let mappedArray = Array(mappingString).map { String($0) }
    
    for i in 0..<encryptedMsgArray.count
    {
        let ch = encryptedMsgArray[i]
        
        if ch != " "
        {
            if let index = mappedArray.index(of: ch)
            {
                encryptedMsgArray[i] = alphabetArray[index]
            }
        }
    }
    
    print(encryptedMsgArray.flatMap({$0}).joined())
}
