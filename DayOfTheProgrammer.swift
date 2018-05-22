//
//  DayOfTheProgrammer.swift
//  
//
//  Created by Sakshi Jain on 03/05/18.
//

import Foundation

var inputYear = Int(readLine()!)!

var totalDays = 31+28+31+30+31+30+31+31 // total days till 8 months

if inputYear == 1918
{
    print("26.09.1918")
}
else
{
    if ((inputYear <= 1917) && (inputYear%4 == 0)) || (inputYear%4 == 0 && inputYear%100 != 0) || inputYear%400 == 0   // its leap year
    {
        totalDays += 1
    }
    
    let finalDate = 256 - totalDays // 256 - static value day of programmer
    print("\(finalDate).09.\(inputYear)")
}
