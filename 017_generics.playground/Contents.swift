import UIKit

print("---------generics:泛型-------------")
func toString<T>(param:T) ->T
{
    return param
}

print(type(of: "hello"))
print(type(of: 1.5))
print(type(of: 123))
print(type(of: "h"))
