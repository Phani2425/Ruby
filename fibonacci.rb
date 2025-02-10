print "Enter the size of Fibonacci series you want:- "
size = gets.chomp.to_i

puts 0
i=1

prev = 0
curr = 1

while i < size
    prev,curr = curr,prev+curr
    puts curr
    i+=1
end

