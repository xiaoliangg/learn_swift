import UIKit

print("-----------------函数:函数类型作为返回值-----------------")
func play1(param:Int) -> Int
{
    return param * param;
}

func play2(param:Int) -> Int
{
    return param + param;
}

func test1(param:Bool) -> (Int) ->Int
{
    return param ? play1 : play2
}
var fun_result = test1(param: false)
print(fun_result(3))

print("-----------------函数:内嵌函数-----------------")

func test2(param:Bool) -> (Int) ->Int
{
    func play3(param:Int) -> Int
    {
        return param * param;
    }

    func play4(param:Int) -> Int
    {
        return param + param;
    }
    
    return param ? play3 : play4
}
var fun_result2 = test1(param: false)
print(fun_result2(4))
