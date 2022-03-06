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
print("-----------函数参数:只写一个表示的外部名称，默认内部名称和外部名称一样-----------")
func test2(outname inname:String)
{
    print(inname)
}
test2(outname: "name")
