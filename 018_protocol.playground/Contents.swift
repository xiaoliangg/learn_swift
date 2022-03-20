import UIKit

print("---------protocol:协议-------------")
class TestClass
{
    
}

protocol Protocol1
{
    var value1:String{set get}
    func play1() -> String
}

protocol Protocol2
{
    var value2:String{set get}
    func play2() -> String
}

class Data:TestClass,Protocol1,Protocol2
{
    var value11:String  = ""
    var value22:String = ""

    var value1: String{
        set{
            self.value11 = newValue
        }
        get{
            return self.value11
        }
    }
    var value2: String{
        set{
            self.value22 = newValue
        }
        get{
            return self.value22
        }
    }
    
    func play1()  -> String{
        return "v1:" + self.value1
    }
    func play2()  -> String{
        return "v2:" + self.value2
    }
}

var data = Data()
data.value1 = "v1"
data.value2 = "v2"
print(data.play1())
print(data.play2())
