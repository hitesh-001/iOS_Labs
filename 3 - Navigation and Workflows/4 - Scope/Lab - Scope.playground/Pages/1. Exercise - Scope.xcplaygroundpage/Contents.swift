/*:
## Exercise - Scope
 
 Using a comment or print statement, describe why the code below will generate a compiler error if you uncomment line 10.
 */
for _ in 0..<10 {
    let foo = 55
    print("The value of foo is \(foo)")
}
//print("The value of foo is \(foo)")

//This will happen because 'foo' variable has a local scope as is defined inside loop and if we call it outside the function it will throw an error.
//:  Using a comment or print statement, describe why both print statements below compile when similar-looking code did not compile above. In what scope is `x` defined, and in what scope is it modified? In contrast, in what scope is `foo` defined and used?
var x = 10
for _ in 0..<10 {
    x += 1
    print("The value of x is \(x)")
}
print("The final value of x is \(x)")

//Both print statements worked because x has a global scope as it is defined outside any loops.
//foo was defined as local scope.
//:  In the body of the function `greeting` below, use variable shadowing when unwrapping `greeting`. If `greeting` is successfully unwrapped, print a statement that uses the given greeting to greet the given name (i.e. if `greeting` successfully unwraps to have the value "Hi there" and `name` is `Sara`, print "Hi there, Sara."). Otherwise, use "Hello" to print a statement greeting the given name. Call the function twice, once passing in a value for greeting, and once passing in `nil`.
func greeting(greeting: String?, name: String) -> String {
    guard let greeting = greeting as? String else {return "Hello \(name)"}
    return "\(greeting) \(name)"
}

print(greeting(greeting: "Hi there", name: "sara"))
print(greeting(greeting: nil, name: "sara"))
//:  Create a class called `Car`. It should have properties for `make`, `model`, and `year` that are of type `String`, `String`, and `Int`, respectively. Since this is a class, you'll need to write your own memberwise initializer. Use shadowing when naming parameters in your initializer.
class Car{
    var make:String
    var model:String
    var year:Int
    init(makeNew: String, modelNew: String, yearNew: Int) {
        make = makeNew
        model = modelNew
        year = yearNew
    }
}

/*:
page 1 of 2  |  [Next: App Exercise - Step Competition](@next)
 */
