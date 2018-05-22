//
//  ElectronicsShop.swift
//  
//
//  Created by Sakshi Jain on 28/01/18.
//

import Foundation

let M = String(readLine(strippingNewline: true)!)
var m_nK_nU_arr = Array(M).map { String($0) }


let keyboardString = String(readLine(strippingNewline: true)!)
var keyboardPriceArr = Array(keyboardString).map { String($0) }

let usbString = String(readLine(strippingNewline: true)!)
var usbPriceArr = Array(usbString).map { String($0) }


var totalAmountToBeSpend = 0
let max_AmountCanBeSpend = Int(m_nK_nU_arr[0])!

for k in keyboardPriceArr
{
    for u in usbPriceArr
    {
        let temp_sum = Int(k + u)
        if (temp_sum! < max_AmountCanBeSpend) && (temp_sum! > totalAmountToBeSpend)
        {
            totalAmountToBeSpend = temp_sum!
        }
    }
}

if (totalAmountToBeSpend == 0)
{
    print("-1")
}
else
{
    print("\(totalAmountToBeSpend)")
}
