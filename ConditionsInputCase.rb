# You can add condtions to the output that proceeds it
 
age = 12
 
puts "You're Young" if age < 30
 
# --------------- CASE ---------------
 
print "Enter Greeting : "
 
# chomp removes /n from input
 
greeting = gets.chomp  # to_s geht nicht fuer case wegen \n!!
puts greeting
 
# Case is used when you have a limited number of options
 
case greeting
when "French", "french"
  puts "Bonjour"
 
  # without exit it would check the next condition ---> it does not..
  # exit
 
when "Spanish", "spanish"
  puts "Hola"
  exit
 
# else is the default
else
  puts "Hello"
end

#Ranges und case
score = 70

result = case score
   when 0..40 then "Fail"
   when 41..60 then "Pass"
   when 61..70 then "Pass with Merit"
   when 71..100 then "Pass with Distinction"
   else "Invalid Score"
end

puts result
