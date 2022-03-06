import UIKit

print("---------结构体:下标语法subscript-----------")

struct Person{
    private var arr:[String] = ["swift","ios","macos","objc"]
    
    subscript(index:Int,param:String) -> String
    {
        set{
            print("\(index)-" + newValue)
            arr[index] = newValue + param
        }
        get{
            print("get")
            return arr[index]
        }
    }
}

var person = Person()
person[0,"3"] = "hello"
print(person[0,"ttt"])
print(person[6,"ttt"]) // 运行报错:Fatal error: Index out of range
