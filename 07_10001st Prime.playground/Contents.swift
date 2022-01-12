import UIKit
/*
  By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see that the 6th prime is 13.

 What is the 10 001st prime number?

 */
var th = 10001

var i = 3
var check = true
var prime:[Int] = [2]

while(true){
    for k in 2...i-1{
        if(i % k == 0){
            check = false
        }
    }
    if(check){
        prime.append(i)
    }else{
     check = true
    }
    i += 1
    if(prime.count == th){
        print(prime[prime.count-1])
        break
    }
}

//104743
