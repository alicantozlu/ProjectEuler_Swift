import UIKit
/*
 A Pythagorean triplet is a set of three natural numbers, a < b < c, for which,
 a2 + b2 = c2

 For example, 32 + 42 = 9 + 16 = 25 = 52.

 There exists exactly one Pythagorean triplet for which a + b + c = 1000.
 Find the product abc.

 */
var target = 1000.0
var check = true
var a:Double = 1
var b:Double = 2
var c:Double = Double()
var sum:Double = Double()

while(check){
    
    //a = 1
    //b = 2
    c = sqrt((a * a) + (b * b))
    sum = a + b + c
    
    if(sum > target){
        a = a + 1
        b = a + 1
    }else if((sum == target) && (a*a + b*b == c*c)){
        print("a:",Int(a),"| b:",Int(b),"| c:",Int(c))
        print("Product of \(Int(a)),\(Int(b)),\(Int(c)):",Int(a)*Int(b)*Int(c))
        break
    }
    b += 1
}

//a: 200 | b: 375 | c: 425
//Product of 200,375,425: 31875000
