import UIKit

print("---------throws_error:异常处理-------------")

enum TestError:String,Error
{
    case error1 = "错误1"
    case error2 = "错误2"
}

// throws 标记方法可能跑出错误
func play1(param:Int) throws
{
    if(param < 0)
    {
        throw TestError.error1
    }else if(param >= 0 && param <= 10)
    {
        throw TestError.error2
    }
}

// 直接调用可能抛出异常的方法会有以下三种提示
// Call can throw but is not marked with 'try'
// Did you mean to use 'try'?
// Did you mean to handle error as optional value?
// Did you mean to disable error propagation?
//play1(param: -1)

// 按照提示fix后，以下三种写法
// Did you mean to use 'try'?
//try play1(param: -1) // 如果抛出异常，会停止执行并向上抛出异常
print("分隔线一")

// Did you mean to handle error as optional value?
try? play1(param: -1)
print("分隔线二") // 如果抛出异常，会继续执行

// Did you mean to disable error propagation?
try! play1(param: 12) // 确保不会抛出异常时使用这种
print("分隔线三")
