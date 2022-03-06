import UIKit
import Darwin

print("---------guard初次使用----------")
func test1(param:Int)
{
    guard param < 10 else
    {
        print("进入guard语句:\(param)")
        return
    }
    print("hello world:\(param)")
    return
}
test1(param: 5)
test1(param: 11)

