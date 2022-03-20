import UIKit
import Foundation

print("---------trailing_closure:尾随闭包-传参String返回值Void-------------")

func play1(param1:String,param2:(String) -> Void)
{
    param2(param1 + "-swift")
}

// 完整写法
play1(param1: "liang", param2: {(data:String) -> Void in
    print(data)
})

// 简写方式一
play1(param1: "简写方式一", param2: {(data) -> Void in
    print(data)
})

// 简写方式二
play1(param1: "简写方式二", param2: {(data) in
    print(data)
})

// !!尾随闭包:当函数类型的参数是最后一位时，调用时写在")"的外面
play1(param1: "尾随闭包"){(data)in
    print(data)
}
//play1(param1: "尾随闭包"){(data) -> Void in
play1(param1: "尾随闭包-返回值Void写成()"){(data) -> () in // 一般不用这种
    print(data)
}


print("---------trailing_closure:尾随闭包-传参String返回值String-------------")
func play2(param:(String) -> String)
{
    var value = param("swift")
    print("返回值:" + value)
}

// 完整写法
play2(param: {(data:String) -> String in
    return data + "-ios"
})

// 简写方式一
play2(param: {(data) in
    return data + "-简写方式一"
})
// 尾随闭包
play2(){(data) -> String in
    return data + "尾随闭包"
}
// 尾随闭包2 去掉返回值
play2(){(data) in
    return data + "尾随闭包2"
}
// 尾随闭包3 只有一个参数时，去掉小括号
play2{(data) in
    return data + "尾随闭包3"
}
// 尾随闭包4
play2{
    return $0 + "尾随闭包4"
}

print("---------trailing_closure:尾随闭包-无参无返回值-------------")
func play3(param:() -> Void)
{
    param()
}

play3(param: {() -> Void in
    print("完整写法")
})
play3(){() -> Void in
    print("尾随闭包-完整写法")
}
play3(){
    print("尾随闭包-带小括号")
}

play3{
    print("尾随闭包-极简写法")
}

print("---------trailing_closure:尾随闭包-无参返回值String-------------")
func play4(param:() -> String)
{
    var value = param()
    print("返回值:" + value)
}

play4{
    return "写return"
}

play4{
    "极简写法"
}
