import Foundation

let n = Int(readLine()!)!
var stackArray = [Int]()

for _ in 1...n
{
    let operation = readLine()!
    let inputArray = operation.split(separator: " ")
    
    switch Int(inputArray[0])!
    {
    case 1:
        stackArray.append(Int(inputArray[1])!)
    case 2:
        if (stackArray.count > 0)
        {
            stackArray.remove(at: stackArray.count - 1)
        }
    case 3:
        var maxElement = -1
        for i in 0..<stackArray.count
        {
            if (maxElement < stackArray[i])
            {
                maxElement = stackArray[i]
            }
        }
        print(maxElement)
    default:
        break
    }
}
