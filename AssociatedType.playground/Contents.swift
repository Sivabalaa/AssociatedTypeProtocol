import UIKit


struct GenericStruct<T> {
 var property: T?
}

let explictStruct = GenericStruct<Bool>()
// T is Bool
let implicitStruct = GenericStruct(property: "iOS Developer")
// T is String

protocol Details {
 associatedtype anyType
 var property: anyType { get set }
}


class Person: Details {
    var property = "iOS Developer"
}

struct Person1: Details {
    var property = 2020
}

let person = Person()
print(person.property)

let person1 = Person1()
print(person1.property)





