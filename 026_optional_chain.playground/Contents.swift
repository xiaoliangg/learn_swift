import UIKit

print("---------optional_chain:可选链展开-------------")
class Data
{
    var name:String
    init(name:String)
    {
        self.name = name
    }
    func play()
    {
        print(self.name)
    }
}

class Test
{
    var name:String
    var data:Data? = nil
    
    init(name:String,data:Data)
    {
        self.name = name
        self.data = data
    }
    
    deinit
    {
        print("Test实例销毁:" + self.name)
    }
}

var t:Test? = Test(name: "liang", data: Data(name: "data_li"))
// 可选连展开
t?.data?.play()
