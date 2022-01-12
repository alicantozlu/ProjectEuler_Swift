import UIKit

// ------------------------------------          PRINT          ------------------------------------

var firstvar = "birinci"
var secVar = "ikinci"

print ("1st Value ",firstvar," 2nd Value ",secVar)                // 1st Value  birinci  2nd Value  ikinci

print ("Benim ilk degisken \(firstvar)")                        // Benim ilk degisken birinci

// ------------------------------------          VARIABLES          ------------------------------------

// var variableName:<data type> = <optional initial value>

var String = "Ali"
var String2:String = "Can"

print("Ben \(String) \(String2)")                   // Ben Ali Can

// ----------------------

var integer = 13
var integer2:Int = 3

print("\(integer) + \(integer2) = ",(integer+integer2))         // 13 + 3 = 16

var double = 13.0
var double2:Double = 3.0

print("\(double) / \(double2) = ",(double/double2))             // 13.0 / 3.0 = 4.333333

// ----------------------

var bool = true
var bool2:Bool = false

print("boolean: \(bool) ve boolean2: \(bool2)")            // boolean: true ve boolean2: false

// ----------------------

var tuple = ("Can", 27, "Samsun", 1.88)

print("tuple.0 = \(tuple.0)")                            // tuple.0: Can

var tuple2 = (a:1 , b:2 , c:3)

print ("tuple2.a = \(tuple2.a)")                       // tuple2[a] = 1

// ------------------------------------          CONDITIONAL          ------------------------------------

// -----------------------------------  IF ELSE

var varA:Int = 100;

if varA == 20 {
   print("varA is equal to than 20");

} else if varA == 50 {
   print("varA is equal to than 50");

} else {
   print("None of the values is matching");
}

// ------------------------------------  SWITCH

var index = 10

switch index {
   case 100 :
      print( "Value of index is 100")
      break
   case 10,15 :
      print( "Value of index is either 10 or 15")
      fallthrough
   case 5 :
      print( "Value of index is 5")
      break
   default :
      print( "default case")
}                                                       // Value of index is either 10 or 15
                                                        // Value of index is 5


// ------------------------------------   FOR

// ----- Baslangic ve son Dahil

for i in -2...5{
    print (i)
}

// ----- Dizi

var someInts:[Int] = [10, 20, 30]

for index in someInts {
   print("Value of index is \(index)")
}                                                       // Value of index is 10
                                                        // Value of index is 20
                                                        // Value of index is 30

// ------------- STRIDE - Baslangic Dahil Son Dahil Degil

for i in stride(from:2,to:10,by:2){
    print(i)
}

// ------------- INDEX

var arr_3 = [3,5,1,2,7,0]

for (index,value) in arr_3.enumerated(){
    print ("index: \(index) | value: \(value)")
}

// ------------ INDEX - STRIDE

var a = 6,b = 2,c = 18

for (index,value) in stride(from:a,to:(c+b),by:b).enumerated(){
    print ("index: \(index) | value: \(value)")
}

// ----------------------------------- WHILE

var index2 = 7

while index2 < 20 {
   print( "Value of index is \(index2)")
   index2 = index2 + 3
}

// ----------------------------------- REPEAT

var index3 = -8

repeat {
   print( "Value of index is \(index3)")
   index3 = index3 + 5
}
while index3 < 20

// ------- CONTINUE

var x = 1
repeat{
    print(x)
x += 1
if( x == 3){
    x += 1
    continue
} else if ( x == 5 ){
    break
}
} while (
    x <= 5000
    )



//CONVERT


let m_str: String = "18"
let m_Int: Int = Int(m_str)!
print(m_str)


let m_int: Int = 25
var m_strng = "\(m_int)"
            
print(m_int);

var x1 = 123
var x2 = x1 % 100

