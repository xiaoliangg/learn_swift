import UIKit

print("-----元组作为函数的参数和返回值-------")
var arr = (name1:1,name2:"name2ss",name3:1.5)

func handle(param:(Int,String,Double)) -> (Int,String,Double)
{
    var temp = param
    temp.0 = param.0 + 1
    temp.1 = param.1 + "_append"
    temp.2 = param.2 + 0.3
    return temp
}

print(arr)
print("-------------------")
let arr2 = handle(param: arr)
print(arr2)
