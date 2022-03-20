import UIKit

print("---------generics:泛型类型限定-------------")

class Data
{
    var name:String
    
    init(name:String)
    {
        self.name = name
    }
}

func play<T:Data>(param:T) -> String
{
    return param.name
}

print(play(param: Data(name: "hello")))
