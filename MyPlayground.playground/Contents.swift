//: Playground - noun: a place where people can play

import UIKit

print("Hello Flint Hills!")

/* Variables / Literals */

let firstName = "Ashley"
let lastName:String = "Coleman"
var age = 20

var aFloat:Float = 6.5
var ( item1, item2 ) = ( 4.6, 5.1 ) // Tuple
var anArray = [ "A", "B", "C", "D" ]
var aDictionary = [ "A":0, "B":1, "C":2, "D":3 ]

print(anArray[2])
print(aDictionary["B"])


/* Control Flow */

var count = 10

/* Conditions */

if count == 0 {
    
}
else if count == 100{
    
}
else{
    
}

switch count{
case 0:
    break
case 100:
    break
default:
    break
}

/* Loops */

for( var i = 0; i < count; i++){

}

while(count > 0){
    count--
}

for var i in 0..<10{

}

/* Functions */

func add(a:Int, b:Int) -> Int{
    return a+b
}

func printHello(count:Int){
    for _ in 0..<count{
        print("Hello")
    }
}

printHello(5)
add(3, b: 7)

/* The operator list is long 😅😅

&+ &- &* &/ &% ?: ??( Nil Coalescing ) ... ..<


Most of you *should* know the following, but if you have any questions just let me know
+ - * / % == = - ! ++ -- ! && || & | ~ ^ << >> ?:(ternary conditional operator)

Now for the rest....

// &+ &- &* &/ &% ?? ... ..<

*/

//--------------------------------------------------------------------------------------------------

// Overflow operators
// &+ &- &* &/ &%

var overflow:UInt8 = UInt8.max
overflow = overflow &+ 1

// Nil Coalescing Operator
var nilVal:Int! = nil
var intWithDefault = nilVal ?? 5
var anotherDefault = intWithDefault ?? 9

// Range operators (Introduced above)
var range = 0...5

for i in 0..<10{
    
}
for _ in range{
    
}


/* Optionals */
class AClass {
    var anInt:Int = 5
}
class BClass {
    var aClass:AClass?
}

var optional:Int? = nil

// Method 1 - unwrapping
if let x = optional{
    print(x)
}

optional = 5

if let x = optional{
    print(x)
}

// Method 2 - optional chaining
var bClass:BClass? = BClass()

var aClassInt = bClass?.aClass?.anInt

// Note a !(forced unwrapping) can be added, but is prone to crashes.
//var anotherClassInt:Int = (bClass?.aClass?.anInt)!

/* Classes */

class Shape {
    func calcArea() -> Double{
        return 0;
    }
    func calcCircumference() -> Double{
        return 0;
    }
}

class Circle: Shape {
    var Radius:Double
    
    init(radius:Double) {
        Radius = radius
    }
    
    override func calcArea() -> Double {
        return (Radius * 3.141592 * Radius)
    }
    
    override func calcCircumference() -> Double {
        return (2 * 3.141592 * Radius)
    }
}

class Rectangle: Shape {
    var Width:Double
    var Height:Double
    
    init(width:Double, height:Double) {
        Width = width
        Height = height
    }
    
    override func calcArea() -> Double {
        return (Width * Height)
    }
    override func calcCircumference() -> Double {
        return( 2 * Width + 2 * Height)
    }
}

class Square: Rectangle {
    init(height:Double){
        super.init(width: height, height: height)
    }
}

var square = Square(height: 5)
square.calcArea()
square.calcCircumference()

/* Structs */
// The only practical difference is how they are passed, and some inheritance

protocol StructShape {
    func calcArea() -> Double
    func calcCircumference() -> Double
}

struct StructCircle: StructShape {
    var Radius:Double
    
    func calcArea() -> Double {
        return (Radius * 3.141592 * Radius)
    }
    
    func calcCircumference() -> Double {
        return (2 * 3.141592 * Radius)
    }
}

struct StructRectangle: StructShape {
    var Width:Double
    var Height:Double
    
    func calcArea() -> Double {
        return (Width * Height)
    }
    func calcCircumference() -> Double {
        return( 2 * Width + 2 * Height)
    }
}

var square2 = StructRectangle(Width: 2.0, Height: 2.0)
square2.calcArea()
square2.calcCircumference()

/* Enumerations */

enum Direction{
    case North
    case South
    case East
    case West
}

var dir = Direction.North
dir = .East

if(dir == .East){
    print("We are going East")
}

enum Union{
    case anInt(Int)
    case aString(String)
}

var union = Union.anInt(5)

switch union {
case .anInt(let intVal):
    print(intVal)
    break
case .aString(let stringVal):
    print(stringVal)
    break
}

union = Union.aString("Text")

switch union {
case .anInt(let intVal):
    print(intVal)
    break
case .aString(let stringVal):
    print(stringVal)
    break
}

enum RawValues: Character{
    case AChar = "A"
    case BChar = "B"
    case CChar = "C"
}

var letter = RawValues.AChar

print(letter)
print(letter.rawValue)

/* Extensions  */

extension String {
    var excite:String { return self + "!!!"}
    func double()->String{
        return ( self + self)
    }
}

print("Hello".excite)
print("World".double())


/* Protocols introduced above */


/* Generics */

class LinkedList<T>{
    var Data:T?
    var Next:LinkedList<T>?
}

var intList = LinkedList<Int>()
intList.Data = 5

var stringList = LinkedList<String>()
stringList.Data = "Text"

/* Closures */
var closure = { (a:String, b:String) -> String in
                return a + b
}

closure("A", "B")

func printString(closure:(String, String)->String){
    print(closure("Hello", "World"))
}

printString(closure)

printString { (var a:String, var b:String) -> String in
    return a + a + b + b + "!!!"
}

printString { (a, b) -> String in
    return a + a + b + b + "!!!"
}

