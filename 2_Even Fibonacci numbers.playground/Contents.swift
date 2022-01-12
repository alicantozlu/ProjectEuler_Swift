import UIKit
/*
Each new term in the Fibonacci sequence is generated by adding the previous two terms. By starting with 1 and 2, the first 10 terms will be:

 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, ...

 By considering the terms in the Fibonacci sequence whose values do not exceed four million, find the sum of the even-valued terms.
 */
var x = 1
var y = 2
var z = 3

var sum = 0

while(true){
    print("x",x," | y",y," | z",z)
    
    if(x % 2 == 0) {sum += x}
    if(y % 2 == 0) {sum += y}
    if(z % 2 == 0) {sum += z}
    
    z = x + y
    x = y + z
    y = z + x

    let m4 = 4000000
    if(x >= m4 || y >= m4 || z >= m4) {
        print("==> x",x," | y",y," | z",z)
        break
    }
}

print(sum)
