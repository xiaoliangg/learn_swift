import UIKit

var greeting = "Hello, playground"
print(greeting)

// 基本类型声明和定义
var s1:String = "String test"
print(s1);
var i:Int = 32;
print(i);
var f:Float = 32.00;
print(f)
var c:Character = "c"
print(c);

var s2 = "String test2"
print(s2);

print("-----常量-------")
let i3 = 30
//i3=20
print(i3)
print("i3:\(i3)")

print("-----类型别名-------")
typealias aa=Int
var a:aa=32
print("a:\(a)")
print(type(of: a))

print("-----类型转换-------")
var a3 = 10
print("值=" + String(a3))
print("值=" + String(true))
