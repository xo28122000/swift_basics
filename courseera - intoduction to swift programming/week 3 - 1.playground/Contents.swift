import UIKit

var str = "Hello, playground"




//------------------------------------------------------------------------------------
var maybestr : String? = nil

print(maybestr)
//print(maybestr!)


//------------------------------------------------------------------------------------

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








//------------------------------------------------------------------------------------
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




//------------------------------------------------------------------------------------
let noValue:Int? = nil
//let unwrappedValue = noValue!



//------------------------------------------------------------------------------------

var a=5
var b = a
b=3
a


class number1{
    var value:Int
    init(value:Int) {
        self.value = value
    }
}

var anum = number1(value: 3)
var bnum = anum
bnum.value=5
anum.value


struct number2{
    var value:Int
    init(value:Int) {
        self.value = value
    }
}

var anum2 = number2(value: 3)
var bnum2 = anum2
bnum2.value=5
anum2.value




//------------------------------------------------------------------------------------




class someclass{
    var value:Int
    required init(value:Int) {
        self.value = value
    }
//    convinience init would be called if no parameters were called
    convenience init(){
        self.init(value:1)
    }
    func getsomehing()->Int{
    return 5
    }
}

//this class inherits the previous class
class some_inhereted_class : someclass{
    override func getsomehing() -> Int {
     return 3
    }
}

//extension is used to add more func to an existing class
extension someclass{
    func getsomehingmore()->Int{
        return 100
    }
}


//inteface in java is protocol in swift, it defines how a class should be structured
protocol someprotocol{
    func somefuncthathastobeimplemented()
}

class protocoledclass: someprotocol{
    func somefuncthathastobeimplemented() {
        
    }
}

class protocollaedandinheretedclass :  someclass, someprotocol{
    func somefuncthathastobeimplemented() {
        
    }
}






//------------------------------------------------------------------------------------








enum typesofvegetables: Int{
    case tomatoes
    case carrots
//    case one=1,2
}
typesofvegetables.tomatoes
