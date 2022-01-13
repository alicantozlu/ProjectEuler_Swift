import UIKit
/*
 The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.

 Find the sum of all the primes below two million.

 */
var primeArr:[Int] = []
var i = 3
var check = true
var sum = 0

while(i < 150){
    for p in 2...i-1{
        if(i % p == 0){
            //primeCheck = false
            check = false
            break
        }
    }
    if(check){
        primeArr.append(i)
        sum = sum + i
        print("i:",i)
    }else{
        check = true
    }
    i += 2
}
print(sum+2)
 
