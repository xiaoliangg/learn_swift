import UIKit

print("-----------------函数类型作为返回值-----------------")
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
