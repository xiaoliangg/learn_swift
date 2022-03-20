import UIKit

print("---------lazy:懒加载-------------")
class Data
{
    init()
    {
        print("data init")
    }
    func play()
    {
        print("data play")
    }
}

class Test
{
    // 添加 lazy 关键字观察加载情况
//    lazy var data:Data = Data()
    var data:Data = Data()

    init()
    {
        print("test init")
    }
}

var test:Test = Test()
print("分隔线")
test.data
