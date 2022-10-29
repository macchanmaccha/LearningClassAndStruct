import UIKit

struct test {
    let cat: String
    let dog: String
}
/// -> 怒られない

//class test {
//    let cat: String
//    let dog: String
//}
/// -> 💥怒られる：　Class 'test' has no initializers

class Cat {
    var like: String = "魚"
}
struct Dog {
    var like: String = "肉"
}

let tama: Cat = Cat()
let pochi: Dog = Dog()

func initWithData(_ data: Cat) {
 var data = data
 data.like = "マタタビ"
}

func initWithData2(_ data: Dog) {
 var data = data
 data.like = "マタタビ"
}

initWithData(tama)
initWithData2(pochi)

print(tama.like) // →"マタタビ"
print(pochi.like) // →"肉"

class Cat2 {
    var like: String
    init(like: String) {
        self.like = like
    }
}
struct Dog2 {
    var like: String
    init(like: String) {
        self.like = like
    }
}

let tama2: Cat2 = Cat2(like: "魚")
tama2.like = "肉" // →"肉"
let pochi2: Dog2 = Dog2(like: "肉")
//pochi2.like = "魚" // ERROR
