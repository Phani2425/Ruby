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

irb(main):029:0> gets
3
=> "3\n"                                                  
irb(main):030:0> $_
=> "3\n"
irb(main):031:0> 

=end

=begin

OPERATION ORDERING:- 
precedense order = *,/,** > +,- > =

only ** -> exponentiiation is evaluated from right to left

2 ** 2 ** 3 -> it will be 2^8 as evaluated from right to left
=end


=begin
STRINGS:-

most used in ruby

string.size and string.length ->  returns the lenght of string
we can use index to get the characters
stringName[1]
stringName[-1]-> returns last character
stringName[1,5]-> from 1st index to 5th
stringName[2..10] -> this also works same
string.slice(0)-> return 1st charcter
string.slice(1,5) -> return charcters from 1 to 5 index

string.split -> splts on the basis of white space
string.split('charcater') -> splits on the basis of charcater
string.split("string") -> do simmilar
    each one returns a array object


string.chars -> returns an array of all the characters the string have

string.count('character') -> counts the no of character and returns that

string.upcase
string.downcase
string.swapcase
string.capitalize

BANG METHODS:-
in ruby everything is object and every inbuilt method returns a new objecct until we explicitely mentioned that the method is a bang method
 and a method can be a bang emthod if we put an exclamation mark on its end

 and when we use bang method then insted of returning the new object it modifies the object in place 

 string.swapcase -> return new string object

 string.swapcase! -> modifies the string in place

 stringName.chop -> remove last char

 string.chomp -> removes new line char from end only if it exist else return the string as it is

 then what is diff bw chomp and chop??
chomp: Removes the trailing newline character (\n) from the end of a string. If there is no newline character at the end, it returns the string unchanged.
chop: Removes the last character of the string, regardless of what it is.

string.include?("substring or char") -> returns true or false

string.index("substring") -> returns the index of the 1st char of substring if exist else nil

string.start_with?("string") 
string.end_with?("string")

delete_suffix("substring")
delete_prefix("substring")

array.join -> joins all element and make a string
array.join("char or string") -> puts the attribute while joining
ex:-
irb(main):031:0> [1,2,3].join
=> "123"
irb(main):032:0> [1,2,3].join("abc")
=> "1abc2abc3"

append operator -> append something to a string and change the string in place

string << newstring -> returns the new string after appending

as we know '+' is used forr concat but we appending is used for better performance

string.gsub("string or char", "new string or char") -> replaces first arg with second



STRING METHODS:-

to_i -> conver possible string to int
"5".to_i => 5
"a".to_i=> 0

simillar with to_f

to_s -> converts to string
5.to_s -> 5

a=""
a.empty? - > return true

string.center(10) -> add 10 leading and trailing spaces
string.center(10,'-') -> add 10 leading and trailing '-'

# ljust -> put no of metioned char or space in right
rjust -> vice versa
string.ljust(15)
string.rjust(15)

remove spaces
lstrip
rstrip
strip

when craeating string using single quote the for escapin the apostop character we use backslash

.encoding -> returns the encodinng if string

=end

=begin
CONDITIONALS:-

if condition
    expression

end

we acn also assign values throgh if conditions:-

message = if true
    "hi guys"
end
puts message

here the string gets assigned in the message variable

UNLESS OPERATOR:-

is_online = true

if !is_online
    puts "offline"
end

OR

unless is_online
    puts "offline"
end

we can also do variable assingment through unless statement

TERNARY OPERATOR:-

messaeg = is_online ? "online" : "offline"


=end

=begin
CASE STATEMENTS:-

num = 8

case num
when 0
    puts "num is 0"
when 2
    puts "num is 2"
when 6
    puts "num is 6"

else
    puts "num is 8"
end

OR

case 
when num==0
    puts "num is 0"
when num==2
    puts "num is 2"
when num==6
    puts "num is 6"

else
    puts "num is 8"
end

OR
case shorthand:-

    case 
when num==0 then puts "0"
when num==2 then puts "num is 2"
when num==6 then puts "num is 6"
else puts "num is 8"
end

IMP:-

num = 9

message = case num
when  0..5 then "bw 0 to 5"
when  5..8 then "bw 5 to 8"
when  8..10 then "bw 8 to 10"
else "more than 10"
end

puts message

IN "===" THE RANGE WILL BE ON LEFT AND VALUE WILL BE ON RIGHT
=end

=begin
LOOPS

while loop:-
there are two ways in which we can write while loop:-

    i = 0
while i < 5
    puts "less than 5"
    i += 1
end 

OR

i = -1
puts "#{i += 1}" while i < 4
# in this way we do not have to write the end statement

UNTIL LOOP:-
this works similar to the while loop but the only diff is it checks the false condition ,means untill the condition is evaluated to be true it will execute the  code
until it is true i will do this

i=0
until i > 4
    puts "#{i}"
    i+=1
end

OR

i=-1
puts "#{i += 1}" until i>3

# end is writen when it spans to multiple lines


FOR LOOP:-
something to know about for loop:-
in is a membership operator
here we can write ranges in brackets or we can skip them
when for loop is mulitlined then end is mandatory but not do
but when for loop is in single line then do is manadatory and we can skip the end

i = 0

for i in 0..5 
    puts i
end

OR

for i in 0..5 do puts i

EACH:-
each is a method which can be only used in collections like array and hash
basicaly it provides an iterarator which is written in the middle of two pipes which iterates over each element
it works simillar like for loop
when written in single line then we can use curly braces to define a code block
but when written in multiple lines then we have to use the "do" keyword for marking the startiung of code block and use "end" keyword for marking the ending of code block
in each we can use ranges but here unlike others the round brackets are mandatory to have because if we dont use that then the interpreter will take the last number of range only instead of whole range


(0..7).each {|i| puts i}

OR

(0..6).each do |i|
    puts i
end

['a','b','c'].each do |a|
    puts a
end

['wer','rty','tubt','jsvdf'].each do |s|
    puts s
end

=end











