import UIKit
/*
 The prime factors of 13195 are 5, 7, 13 and 29.

 What is the largest prime factor of the number 600851475143 ?
*/

var num = 600851475143
var primeFactors:[Int] = []
var Prime = true

for i in stride(from:3,to:num,by:2){
    if(num % i == 0){ // sayıya tam bolunuyor mu?
        print("New Possible Prime Factor:",i)
        for k in primeFactors{
            if(i % k == 0){ // Daha once bulunan sayıların katı mı?
                print("Multiple of",k,", Not Prime Factor!")
                Prime = false // Prime degil, onceki primelarin kati
            }
        }
        if(Prime){
            print("New Prime Factor:",i)
            primeFactors.append(i)
            num = num/i // sayiyi bol
            print("New num:",num)
        }else{
            Prime = true
        }
    }
    if(num == 1){
        break
    }
}

print("Largest Prime Factor of 600851475143 is:",primeFactors[primeFactors.count-1])
