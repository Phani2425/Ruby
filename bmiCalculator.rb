puts "Body Mass Index (BMI) Categories:"
puts "Severe Thinness: less than 16"
puts "Moderate Thinness: 16 - 16.9" 
puts "Mild Thinness: 17 - 18.4"
puts "Normal: 18.5 - 24.9"
puts "Overweight: 25 - 29.9"
puts "Obese Class I: 30 - 34.9"
puts "Obese Class II: 35 - 39.9"
puts "Obese Class III: 40 or greater"
puts

puts "Body Mass Index (BMI) Calculator"
puts "Enter your weight in kilograms:"
weight = gets.chomp.to_f
puts "Enter your height in meters:"
height = gets.chomp.to_f
bmi = weight / (height ** 2)
puts "Your BMI is: #{bmi}"

# The chomp method in Ruby is used to remove the trailing newline character (\n) from the end of a string. When you use gets to take input from the user, it includes the newline character at the end of the input. Using chomp removes this newline character, making the input cleaner for further processing.
