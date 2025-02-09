# puts ("Hello ruby")

# print ('i wont let you come in next line... ')

# puts('ohk ohk')

# puts ("#{p 'you know i willl get printed with a double coat and also return myself only..'}")

# print 'enter your age:- '

# age = gets

# if(age.to_f < 18.0) then puts "sorry..you can't vote this year" end

# if(age.to_f >= 18.0) then puts "congo .. you can vote this year" end

=begin 
ruby --help -> in terminal for all the flags we can use in the terminal while executing any programm
irb -> interactive ruby ...-> iof we type this and press enter in any terminal then there only we can write programm and run without writing any command
and in this whatever be the program we made run will always show what the program returned with "=>" as prefix , if return nothing then write nill

program error = bugs -> finding and solving them is debuging
types:-
syntax error => error in wrting code
runtime error=> also known as exceptions and dont show up until the program is made run
semantic error => do not show any error message and even the project will run succesfully but it will not perform the right thing as it might be logically wrong
=end

puts "#{"Hello".class}"

=begin
In Ruby, the .class method comes from the Object class, which is the base class for all Ruby objects. Specifically, it is defined in the Kernel module, which is included in Object.

Breakdown:
Kernel Module:-
The Kernel module provides many useful methods, including .class.
It is included in the Object class.
Object Class:-
Since all Ruby classes inherit from Object (directly or indirectly), every object has access to .class.
BasicObject (Root Class):-
Object itself inherits from BasicObject, which is the root class of all objects in Ruby. However, BasicObject does not include Kernel, so objects that inherit directly from BasicObject (without Object) won't have .class unless explicitly defined.
=end

=begin
In Ruby, main is not a class—it's actually the default object of type Object that Ruby starts executing code in. Let me break it down:

1. What is main?
When you start a Ruby script or enter irb (Interactive Ruby), the default execution context is an object called main.

Why does main exist?
main is just a special instance of Object where top-level methods and constants are defined.

When you define a method at the top level, it actually becomes a private instance method of Object.


def hello
  puts "Hello from main!"
end

Object.new.hello #=> NoMethodError (because it’s private)
=end

=begin
true.class = ?
false.class = ?
[1,2,3].class= ? 
{:name => "john"}.class = ?

arary and hash are collection of objects while array is collection of ordered objects the hash is the collection of key value pair

:name.class = ?

Symbol datatype is specific to ruby .and also known as lightweight string as it takes less memory as compared to strings so it is used in place of strings for better performance
=end

# when we write any expression or variables in the puts or print statement then actually what happens is that get evaluated and return something which ultimately get printed
# artihmatic operators and various asignment operators
# a = 3 also returns the value of a..and also every other asiignment and expression behave same way ...check if it happens in othe rprogramming langs too??

# because here everyting is an expression and expressions always returns its evaaluated answer and by surprise it also acts same in c,cpp,java,js,python(:=) 
# like:-
# int a;
# int b = (a = 3) + 2;  // a = 3, b = 5
# printf("%d", a);      // Output: 3

=begin
# COMPARISION OPERATOR
<=> -> combine comparing operator ->  return 0 if same, 1 if first operand is greater than 2nd and -1 if less
== -> checks value
=== ->  checks if second operand belongs to first -> String === 'foo' -> returns true, (1..10) === 5 -> returns true
(start..end) = a range that starts from start and ends with end

a=5
b=5.0
a==b -> returns true
a.eql? b -> return false as they are of diff type and eqal? checks the type

a="test"
b="test"
a.eql? b -> true
a.equal? b -> false because value  and type are same but two diff objects have two diff object id

how to see object id??
object.object_id ->  returns the id

so in this way can't two objects have same object id???
ofcourse yes...
a = b = "test"
a.equal? b -> returns true
=end

=begin
# lOGICAL OPERATORS
and=true when both are true
or = true when atleast one is true
not = true if operand is false
&&
||
!
basically these works on short circuit rule and returns the value of the operands only on the basis of the rules
=end

=begin
# Special operators

Range operators
these are the operators used to define ranges . and these are written in round brackets like (start..end)
although it is used to define range still they only store the start and end value .and by using different methods we can bring them to the desired structure
like:
to_a -> to array -> this is mostly used with ranges
to_f-> to float -> will give error as  range can not be converted to float
to_s-> to string -> will convert that to a string only like :- "1..4"

there are two types of range operator
.. -> when converted to array it includes the last value
... -> it excludes the last value

in range not only we can use integers and float but we can also use strings and characters

    # when range formation is not possible then it returns empty array
irb(main):023:0> ('q'..'a').to_a
=> []
irb(main):024:0> ('a'..'z').to_a
=> 
["a",                                                            
 "b",                                                            
 "c",                                                            
 "d",                                                            
 "e",                                                            
 "f",                                                            
 "g",                                                            
 "h",                                                            
 "i",                                                            
 "j",                                                            
 "k",                                                            
 "l",                                                            
 "m",                                                            
 "n",                                                            
 "o",
 "p",
 "q",
 "r",
 "s",
 "t",
 "u",
 "v",
 "w",
 "x",
 "y",
 "z"]

 ("ab".."xy"), ("abc".."xyz") -> works well too
 see how intresting these are ....the interpreter figuring out the combinations on itself

#  learned another operator:

defined?

syntax:- defined? variableName

returns a string showing if the varivbale is local variballe or global variable if the variable is defined and nill if it is not defined at all and for methods it returns "method"

a = 5
defined? a -> "local-variable"
defined? $_ -> "global-variable" as this is the var that store the last line inputed by the user
defined? b -> nil
defined? puts -> "method"
=end