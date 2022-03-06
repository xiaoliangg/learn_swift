import UIKit

print("----------结构体:属性观察的使用willSet和didSet--------")

struct Person
{
    var name:String = "unknown"{
        willSet{
            print("willSet:\(newValue)")
        }
        didSet{
            print("didSet:\(name)")
        }
    }
    init(){
        
    }
}
var person = Person()
person.name = "test1"
person.name = "test1"
print(person.name)

