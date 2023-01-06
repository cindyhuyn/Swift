
//import UIKit
//SwiftUI Lesson 2 - Class, Array, Struct

//important note: structs act like instances, whereas classes act like they have static var and funcs within them.
struct Cow {
    
    // Properties
    var name:String = ""
    var nameWithPrefix:String {
        "cow says: " + name
    }
    
    // View Code for this screen
    
    // Methods
    func speak() {
        // Code to send the animal noise
        print(nameWithPrefix)
    }
}

var cow1 = Cow()
//updated it's name
cow1.name = "Billy"
cow1.speak()

//for loop example of for loop print out 3 lines, doesn't need _:Int, change 0...2 to 1...3
for _ in 0...2 {
    print("hey")
}

//while loop
var i:Int = 0
while i < 3 {
    print("hi")
    i = i + 1
}

//i is now 3
if i == 0 {
    print("i is 0")
} else if i == 1 {
    print("i is 1")
} else if i == 3 {
    print("i is 3")
} else {
    print("i is else")
}

//switch statement
switch i {
case 0: print("0")
case 1: print("1")
case 2: print("2")
//case 3: print("3")
default:
    print("wildcard case/switch!")
}

class Classroom {
    
    //Properties
    var roster:Set<String> = []
    var chat:Set<String> = []
    
    func isStudent(_ student: String) -> Bool {
        return roster.contains(student)
    }
    
    //add student
    func addStudent(_ student: String) {
        if !isStudent(student) {
            roster.insert(student)
        }
    }
    
    //add to the chatroom
    func speak(student: String, speech: String) {
        if (isStudent(student)) {
            chat.insert(speech)
        }
    }
    
    //remove user
    func del(student: String) {
        if isStudent(student) {
            roster.remove(student)
        }
    }
}

//create classroom
var classrm:Classroom = Classroom()
classrm.addStudent("Chris")
classrm.speak(student: "Cindy", speech: "Hey")
classrm.speak(student: "Chris", speech: "This is Lesson 2!")
classrm.speak(student: "Chris", speech: "HEY")
classrm.del(student: "Chris")
classrm.speak(student: "Chris", speech: "HEY")

print(classrm.chat)

