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
print("-----可选类型Optional-------")
var s4 = "aa";
var s5 = "10"  //可选类型
print(Int(s4))
var s6 = Int("ss") ?? 11
print("可选类型s6:\(s6)")
var s7 = Int("12") ?? 11
print("可选类型s6:\(s7)")
