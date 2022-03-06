import UIKit

print("-----------函数可变参数-----------")
func test1(name:String...)
{
    print(type(of: name))
    for b in name{
        print(b)
    }
}

test1(name:"a","b")
