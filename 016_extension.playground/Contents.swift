import UIKit

print("---------class_extension:扩展自定义类-------------")
class A
{
    
}

extension A
{
    var name:String
    {
        get{
            return "hello world"
        }
    }
    
    func toString()
    {
        print("this is A to String")
    }
}

var a = A()
a.toString()
print(a.name)

print("---------class_extension:扩展自String类-------------")
extension String
{
    func toString() -> String
    {
        return "长度=" + String(self.count)
    }
}
var b = "liang"
print(b.toString())
