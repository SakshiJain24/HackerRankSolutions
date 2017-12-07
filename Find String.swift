import Foundation

let query = Int(readLine()!)!

for _ in 0..<query
{
    let inputString = String(readLine(strippingNewline: true)!)
    var inputArrCopr = Array(inputString).map { String($0) }
    
    let inputString1 = "hackerrank"
    let strToBeFoundArr = Array(inputString1).map { String($0) }
    
    var counter = 0
    var foundIndex = -1
    
    for i in strToBeFoundArr
    {
        if let index = inputArrCopr.index(of: i), index > foundIndex
        {
            print(i)
            foundIndex = index
                for j in 0...index
                {
                    inputArrCopr[j] = "0"
                }
            print(inputArrCopr)
            counter += 1
        }
    }
    
    if (counter == strToBeFoundArr.count)
    {
        print("YES")
    }
    else
    {
        print("NO")
    }
}
