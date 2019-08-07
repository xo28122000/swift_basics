import UIKit

var str = "Hello, playground"

var maybestr : String? = nil

print(maybestr)
//print(maybestr!)




func performsomething(spell:String)->String{
    print("\(spell) is magical")
    return(spell)
}

performsomething(spell: "blah blah blah")

var someotherfunc = performsomething

var someotherfunction = {
    (spell:String) -> String in
    print("\(spell) is magical")
    return(spell)
     }

struct Animal{
    var name = ""
    var heightinches=0.0
    var heightcm: Double{
        get {
            return 2.54*heightinches
        }
        set(newheightcm){
            heightinches = newheightcm/2.54
            
        }
    }
    
}


var dog = Animal(name: "dog",heightinches: 50)


dog.heightinches
dog.heightcm
dog.heightcm = 124
dog.heightinches
dog.heightcm





let noValue:Int? = nil
let unwrappedValue = noValue!
