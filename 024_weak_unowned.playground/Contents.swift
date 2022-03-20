import UIKit

print("---------weak_unowned:循环引用、弱引用、无主引用-------------")
class TestA
{
    var name:String
    var ref:TestB?
    init(name:String)
    {
        self.name = name
    }
    
    deinit
    {
        print("销毁实例:" + self.name)
    }
}


class TestB
{
    var name:String
    // 弱引用
//    weak var ref:TestA?
    unowned var ref:TestA?
    init(name:String)
    {
        self.name = name
    }
    
    deinit
    {
        print("销毁实例:" + self.name)
    }
}

var testA:TestA? = TestA(name: "testA")
var testB:TestB? = TestB(name: "testB")
testA!.ref = testB
testB!.ref = testA

print("ref:" + testB!.ref!.name)
//testA!.ref = nil
testA = nil
testB = nil

