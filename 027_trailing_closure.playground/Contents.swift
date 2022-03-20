import UIKit

print("---------trailing_closure:尾随闭包-------------")

func play1(param1:String,param2:(String) -> Void)
{
    param2(param1 + "-swift")
}

// 完整写法
play1(param1: "liang", param2: {(data:String) -> Void in
    print(data)
})
