# Everything is an object and all of those objects can be overwritten
# Ruby is one of the easiest languages to read and with Rails it may be
# the best web development option period
 
# print prints the string to screen without a newline
print "Enter a Value: "
 
# Variables start with a lowercase letter or _ and may contain numbers
# gets stores input from the user and to_i turns it into an integer
first_num = gets.to_i
 
print "Enter Another Value: "
 
second_num = gets.to_i
 
# puts prints output plus a newline, to_s converts the variable into a
# string, you can combine values using +
puts first_num.to_s + " + " + second_num.to_s + " = " +
(first_num + second_num).to_s
 
=begin
Multiline comments
=end