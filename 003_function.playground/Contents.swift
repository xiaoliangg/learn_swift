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

print("-----------函数实参outname，形参inname-----------")
func test2(outname inname:String)
{
    print(inname)
}
test2(outname: "name")
