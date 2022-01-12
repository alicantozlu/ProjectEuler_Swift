import UIKit
/*
 2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.

 What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?

 */

var check = true
var i = 1
while(true){
    for k in stride(from:2,to:21,by:1){
        if(i % k != 0){
            check = false
        }
    }
    if(check){
        print(i)
        break
    }else{
        check = true
    }
    i += 1
}
