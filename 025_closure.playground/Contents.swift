import UIKit
import Foundation

print("---------weak_unowned:闭包的循环引用-------------")

class Test
{
    var name:String
    
    // 这里如果不加 lazy 会报错
    lazy var data:()->Void = {
        () -> Void in
        print("data:" + self.name)
    }
    
    init(name:String)
    {
        self.name = name
    }
    
    deinit
    {
        print("实例被释放:" + self.name)
    }
}

var test:Test? = Test(name: "hello")
test = nil
