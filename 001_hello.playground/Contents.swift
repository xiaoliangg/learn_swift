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

print("-----可选类型Optional细讲-------")
//var opt1 = nil // 直接声明nil会报错
var opt1:Int? = nil
print(opt1)
print(opt1 ?? 11)
//print(opt1!) // nil类型强转报错
var opt2:Int? = 20
print(opt2)
print(opt2 ?? 11)
print(opt2!)
print("-----swift没有隐式转换-------")

print("-----元组类型内的元素的类型可以不同-------")
var arr = (10,0.5,"ss")
print("arr:\(arr)")
print("arr[1]:\(arr.1)")
print("-----定义元组时声明元素名称-------")
var arr2:(name1:String,name2:Int) = ("s3",18)
print("arr2.name2:\(arr2.name2)")
print("-----元组拆分-------")
let (name1,name2) = ("sss",13.5)
print(name1)
print("-----元组声明时下划线_ 表示忽略-------")
let (name5,_,name6) = ("sname1",15,11.3)
print(name5,name6)

