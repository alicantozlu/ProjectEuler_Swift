import UIKit
/*
 A palindromic number reads the same both ways. The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 × 99.

 Find the largest palindrome made from the product of two 3-digit numbers.

 */
var num:Int = Int()
var digits:[Int] = [0,0,0,0,0,0,0,0]
var palindroma:[Int] = []
for i in 100...999{
    for k in 100...999{
        num = i * k
        digits[0] = ((num - (num % 100000)) / 100000) // 654321 - 54321
        digits[1] = (((num % 100000) - (num % 10000)) / 10000) // 54321 - 4321
        digits[2] = (((num % 10000) - (num % 1000)) / 1000) // 4321 - 321
        digits[3] = (((num % 1000) - (num % 100)) / 100) // 321 - 21
        digits[4] = (((num % 100) - (num % 10)) / 10) // 21 - 1
        digits[5] = num % 10 // 1
        if((digits[0] == digits[5]) && (digits[1] == digits[4]) && (digits[2] == digits[3])){
            //print(digits)
            digits[6] = i
            digits[7] = k
            palindroma.append(num)
        }
    }
}

print(palindroma[palindroma.count-3])
print("i:",palindroma[palindroma.count-2],"| k:",palindroma[palindroma.count-1])

/*
 906609
 i: 514415 | k: 580085
 */
