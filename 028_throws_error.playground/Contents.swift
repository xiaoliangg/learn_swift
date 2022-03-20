import UIKit

print("---------throws_error:异常处理-------------")

enum TestError:String,Error
{
    case error1 = "错误1"
    case error2 = "错误2"
}

// throws 标记方法可能跑出错误
func play1(param:Int) throws -> String // 注意先写 throws 再写返回值
{
    if(param < 0)
    {
        throw TestError.error1
    }else if(param >= 0 && param <= 10)
    {
        throw TestError.error2
    }
    return "hello world"
}

// 直接调用可能抛出异常的方法会有以下三种提示
// Call can throw but is not marked with 'try'
// Did you mean to use 'try'?
// Did you mean to handle error as optional value?
// Did you mean to disable error propagation?
//play1(param: -1)

// 按照提示fix后，以下三种写法
// Did you mean to use 'try'?
try play1(param: 12) // 如果抛出异常，会停止执行并向上抛出异常
print("分隔线一")

// Did you mean to handle error as optional value?
var value2 = try? play1(param: -1)
print(value2) // 打印 nil或optional
print("分隔线二:") // 如果抛出异常，会继续执行

// Did you mean to disable error propagation?
try! play1(param: 12) // 确保不会抛出异常时使用这种
print("分隔线三")


print("---------throws_error:try-catch写法-------------")
do{
//    try play1(param: -1) // 抛出error1
//    try play1(param: 5) // 抛出error2
    try play1(param: 12) // 不抛出异常
    
    var value = try play1(param: 15) // try关键字写在语句里
    print(value)
}catch(TestError.error1)
{
    print("抛出error1")
}catch(TestError.error2)
{
    print("抛出error2")
}
// 类似finally
defer{
    print("执行defer")  //最后执行
}
// ??为什么先执行下面语句，再执行defer
print("分隔线四")


print("---------throws_error:Error作为参数的.写法-------------")
func play2(param:TestError)
{
    print("liangliang")
}
play2(param:.error1)
