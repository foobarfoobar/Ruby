# --------------- TERNARY OPERATOR ---------------
 
age = 50
 
# Format (condition) ? "Returned if true" : "Returned if false"
 
puts (age >= 50) ? "Old" : "Young"
 
# --------------- LOOP ---------------
 

#UNLESS Executes code if conditional is false. If the conditional is true,
#code specified in the else clause is executed.
x=1
unless x>2 # wenn x nicht groesser 2
   puts "x is less than 2"
 else
  puts "x is greater than 2"
end 


x = 1
 
# Loops until you break out of loop
 
loop do
  # Shortcut for x = x + 1
  x += 1
 
  # Slips this iteration of the loop
 next unless (x % 2) == 0    #next is like continue; Executes next if conditional is false.
  puts x
 
  # Ends the looping
  break if x >= 10
end

    n = 1
    loop do
    n = n + 1
    next unless n == 10 #continue solange x != 10, sonst print Good und breake
    print "Good"
    break
    end
 
# --------------- WHILE LOOP ---------------
# Do stuff while the condition is met
 
y = 1
 
while y <= 10
  y += 1
  next unless (y % 2) == 0 # same output as loop above
  puts y
  # break if y >= 10
end
 
z = 1
 
begin
  z += 1
  next unless (z % 2) == 0 # same output...
  puts z
  break if z >= 10
end while z <= 10
 
# --------------- UNTIL LOOP ---------------
# Do stuff until a condition is met
 
a = 1
 
until a >= 10  #bis a >= 10
  a += 1
  next unless (a % 2) == 0 # ...
  puts a
end
 
# --------------- FOR LOOPS ---------------
 
# Create an array of numbers
 
numbers = [1, 2, 3, 4, 5]
 
# Cycles through every item in numbers temporarily storing them in number
# #{variable} can be used to insert values
 
for number in numbers
  puts "#{number}, "
end
 
groceries = ["bananas", "sweet potatoes", "pasta", "tomatoes"]
 
# Cycles through every item in groceries temporarily storing them in food
 
groceries.each do |food|
  puts "Get some #{food}"
end
 
# Cycles through numbers 0 through 5
 
(0..5).each do |i|
  puts "# #{i}"
end
