import Foundation

class Animal{
    let legs: Int
    
    init(legs: Int) {
        self.legs = legs
    }
}

class Dog: Animal{
    
    func speak(){
        print("Woof!")
    }
}

class Corgi: Dog{
    override func speak() {
        print("Woof!")
    }
}
class Poodle: Dog{
    override func speak() {
        print("Woof Woof!")
    }
}


class Cat: Animal{
    var isTame: Bool
    
    init(isTame: Bool) {
        self.isTame = isTame
        super.init(legs: 4)
    }
    
    func speak(){
        print("Meow!")
    }
}

class Persian: Cat{
    override func speak() {
        print("MEOW!")
    }
}
class Lion: Cat{
    override func speak() {
        print("MEOW MEOW!")
    }
}

let riky = Corgi(legs: 4)
let rocky = Poodle(legs: 4)

let dino = Persian(isTame: false)
let luna = Lion(isTame: true)

riky.speak()
rocky.speak()
dino.speak()
luna.speak()
