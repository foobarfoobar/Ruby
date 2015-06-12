# Arithmetic Operators
puts "6 + 4 = " + (6+4).to_s
puts "6 - 4 = " + (6-4).to_s
puts "6 * 4 = " + (6*4).to_s
puts "6 / 4 = " + (6/4).to_s
puts "6 % 4 = " + (6%4).to_s

# Integers or Fixnums can store extremely large numbers
# They can go well beyond 4,611,686,018,427,387,903
 
numOne = 1.000
 
# You must put a 0 before your floats
num99 = 0.999
 
# Floating point calculations tend to be accurate
puts numOne.to_s + " - " + num99.to_s + " = " + (numOne - num99).to_s
 
# 14 Digits of accuracy is the norm
big_float = 1.12345678901234
puts (big_float + 0.00000000000005).to_s

# Everything is an object
puts 1.class
puts 1.234.class
puts "A String".class

# A Constant starts with an uppercase letter and if you try to change the
# value you will be warned
 
A_CONSTANT = 3.14
A_CONSTANT = 1.6
puts A_CONSTANT

# --------------- IF ELSE ELSIF ---------------
 
age = 12
 
# If statements perform different actions depending on conditions
# Comparison Operators : == != < > <= >=
# Logical Operators : && || ! (and, or, not)
 
if (age >= 5) && (age <= 6)
  puts "You're in Kindergarten"
elsif (age >= 7) && (age <= 13)
  puts "You're in Middle School"
  puts "Yeah"
elsif (age >= 14) && (age <= 18)
  puts "You're in High School"
else
  puts "Stay Home"
end
 
puts "true && false = " + (true && false).to_s
puts "true || false = " + (true || false).to_s
puts "!true = " + (!true).to_s
 
# Comparison operator that returns 0 (equal), 1 if 1st is greater and
# -1 if 1st is less then
puts "5 <=> 10 = " + (5 <=> 10).to_s
 
# unless is another comparison operator
 
 unless age > 4       # solange age nicht groesser 4 ist
  puts "No School"
else
  puts "Go to School"
end

# You can add condtions to the output that proceeds it
 
age = 12
 
puts "You're Young" if age < 30
