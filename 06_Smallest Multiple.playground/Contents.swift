import UIKit
/*
 Find the difference between the sum of the squares of the first one hundred natural numbers and the square of the sum.
 */

var sum = 0
var sumS = 0

for i in 1...100{
    sum = sum + i
}
sum = sum * sum

for i in 1...100{
    sumS = sumS + (i * i)
}
print(sum - sumS)

// 25164150
