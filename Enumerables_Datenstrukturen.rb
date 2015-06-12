# Das Core-API enthält folgende Enumerable-Klassen: Array, Hash, Range, File und Dir.
# In Ruby 1.8 kommt noch String dazu, der in 1.9 diesen Status allerdings verloren hat.
# Dafür kommen in Ruby 1.9 Enumerator, Enumerator::Generator und Enumerator::Yielder hinzu

# Classes that include the Enumerable module gain collection capabilities
# but they must define a function called each

class Menu
  include Enumerable

  # Each provides items one at a time

  def each
    yield "pizza"
    yield "spaghetti"
    yield "salad"
    yield "bread"
    yield "water"
  end
end

menu_options = Menu.new

# We can cycle through all the options

menu_options.each do |item|
  puts "Would you like : #{item}"
end

# Check to see if we have pizza
p menu_options.find {|item| item == "pizza"}

# Return items 5 letters in length
p menu_options.select {|item| item.size <= 5}

# Reject items that meet the criteria
p menu_options.reject {|item| item.size <= 5}

# Return the first item
p menu_options.first

# Return the first 2
p menu_options.take(2)

# Return the everything except the first 2
p menu_options.drop(2)

# Return the minimum item
p menu_options.min

# Return the maximum item
p menu_options.max

# Sort the items
p menu_options.sort

# Return each item in reverse order
menu_options.reverse_each {|item| puts item}

#Range
p (1..5)        #==> 1, 2, 3, 4, 5
p (1...5)       #==> 1, 2, 3, 4
p ('a'..'d')    #==> 'a', 'b', 'c', 'd'

#$, =", "   # Array value separator
range1 = (1..10).to_a
range2 = ('bar'..'bat').to_a

puts "#{range1}"
puts "#{range2}"

# Ranges may also be used as conditional expressions. For example,
# the following code fragment prints sets of lines from standard input,
# where the first line in each set contains the word start and the last line the word end.:
# while gets
   # print if /start/../end/
# end

# A final use of the versatile range is as an interval test:
# seeing if some value falls within the interval represented by the range.
# This is done using ===, the case equality operator.
if ((1..10) === 5)
  puts "5 lies in (1..10)"
end

if (('a'..'j') === 'c')
  puts "c lies in ('a'..'j')"
end

if (('a'..'j') === 'z')
  puts "z lies in ('a'..'j')"
end


#Auf alle Elemente eines Arrays eine Operation anwenden und die Rückgabewerte sammeln: 
[1,2,3].map do |number|
 puts number ** 2
end #=> [1,4,9]

#Elemente ausfiltern: 
[1,2,3].reject do |number|
 puts number > 2
end #=> [1,2] out: false, false, true

#Einen Array zu einem Wert reduzieren: 
#Summing numbers is the most common example for using inject. You have an array of numbers and you want the sum of those numbers.
# The block will be executed once for each element contained in the object that inject was called on ([1,2,3,4] in our example).
# The argument passed to inject will be yielded as the first argument to the block, the first time it's executed.
# The second argument yielded to the block will be the first element of the object that we called inject on.
# 
# So, the block will be executed 4 times, once for every element of our array ([1,2,3,4]).
# The first time the block executes the result argument will have a value of 0 (the value we passed as an argument to inject) and
# the element argument will have a value of 1 (the first element in our array).
# 
# You can do anything you want within the block, but the return value of the block is very important.
  # The return value of the block will be yielded as the result argument the next time the block is executed.
# 
# In our example we add the result, 0, to the element, 1. Therefore, the return value of the block will be 0 + 1, or 1.
# This will result in 1 being yielded as the result argument the second time the block is executed.
foo = [1,2,3] 
foo.inject(0) do |val, number|
 val + number #??????????
end #=> 6

# Sometimes you'll have data in one format, but you really want it in another. For example, you may have an array that contains
# keys and values as pairs, but it's really just an array of arrays. In that case,
# inject is a nice solution for quickly converting your array of arrays into a hash.

hash = [[:first_name, 'Shane'], [:last_name, 'Harvie']].inject({}) do |result, element|
  result[element.first] = element.last
  result
end

p hash # => {:first_name=>"Shane", :last_name=>"Harvie"}
# As the example shows, I start with an empty hash (the argument to inject) and I iterate through each
# element in the array adding the key and value one at a time to the result. Also, since the result of the block is
# the next yielded result, I need to add to the hash, but explicitly return the result on the following line.
# similiar build an array

# Building from the Test Result example you might want to group all results by their status.
# The inject method lets you easily do this by starting with an empty hash and defaulting each key value to an empty array,
# which is then appended to with each element that has the same status.

TestResult = Struct.new(:status, :message)
results = [
  TestResult.new(:failed, "1 expected but was 2"),
  TestResult.new(:sucess),
  TestResult.new(:failed, "10 expected but was 20")
]

grouped_results = results.inject({}) do |grouped, test_result|
  grouped[test_result.status] = [] if grouped[test_result.status].nil?
  grouped[test_result.status] << test_result
  grouped
end

p grouped_results
# >> {:failed => [
# >>    #<struct TestResult status=:failed, message="1 expected but was 2">, 
# >>    #<struct TestResult status=:failed, message="10 expected but was 20">],
# >>  :sucess => [ #<struct TestResult status=:sucess, message=nil> ]
# >> }



class Recorder
  instance_methods.each do |meth|
    undef_method meth unless meth =~ /^(__|inspect|to_str)/
  end

  def method_missing(sym, *args)
    messages << [sym, args]
    self
  end

  def messages
    @messages ||= []
  end
end

Recorder.new.will.record.anything.you.want
# >> #<Recorder:0x28ed8 @messages=[[:will, []], [:record, []], [:anything, []], [:you, []], [:want, []]]>

class Recorder
  def play_for(obj)
    messages.inject(obj) do |result, message|
      result.send message.first, *message.last
    end
  end
end

recorder = Recorder.new
recorder.methods.sort
recorder.play_for(String)

# >> ["<", "<=", "<=>", "==", "===", "=~", ">", ">=", "__id__", ...]

# > a ||= 1;
# => 1
# > a ||= 2;
# => 1
# 
# > foo = false;
# => false
# > foo ||= true;
# => true
# > foo ||= false;
# => true


#Sowie beliebige Kombinationen, zum Beispiel die Summe aller Quadratzahlen eines Arrays: 
puts [1,2,3].map{ |n| n**2 }.inject(0){ |v,n| v+n } #=> 14