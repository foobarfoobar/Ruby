# --------------- STRINGS ---------------

# Strings are a series of characters between " or '
# String interpolation doesn't work with '' and neither do backslash
# characters like newline

puts "Add Them #{4 + 5} \n\n" #output Add them 9, dann 2 newlines
puts 'Add Them #{4 + 5} \n\n' #output wie es hier steht

# A here-doc is normally used when you want a multiline string

multiline_string = <<EOM
This is a very long string
that contains interpolation
like #{4 + 5} \n\n
EOM

puts multiline_string

# ---------------------------------------

# Find all string methods by typing irb in terminal and "string".methods
# => [:<=>, :==, :===, :eql?, :hash, :casecmp, :+, :*, :%, :[], :[]=, :insert, :length, :size, :bytesize, :empty?, :=~, :match, :succ, :succ!, :next, :next!, :upto, :index, :rindex, :replace, :cl
# ear, :chr, :getbyte, :setbyte, :byteslice, :scrub, :scrub!, :freeze, :to_i, :to_f, :to_s, :to_str, :inspect, :dump, :upcase, :downcase, :capitalize, :swapcase, :upcase!, :downcase!, :capitalize
# !, :swapcase!, :hex, :oct, :split, :lines, :bytes, :chars, :codepoints, :reverse, :reverse!, :concat, :<<, :prepend, :crypt, :intern, :to_sym, :ord, :include?, :start_with?, :end_with?, :scan,
# :ljust, :rjust, :center, :sub, :gsub, :chop, :chomp, :strip, :lstrip, :rstrip, :sub!, :gsub!, :chop!, :chomp!, :strip!, :lstrip!, :rstrip!, :tr, :tr_s, :delete, :squeeze, :count, :tr!, :tr_s!,
# :delete!, :squeeze!, :each_line, :each_byte, :each_char, :each_codepoint, :sum, :slice, :slice!, :partition, :rpartition, :encoding, :force_encoding, :b, :valid_encoding?, :ascii_only?, :unpack
# , :encode, :encode!, :to_r, :to_c, :>, :>=, :<, :<=, :between?, :nil?, :!~, :class, :singleton_class, :clone, :dup, :taint, :tainted?, :untaint, :untrust, :untrusted?, :trust, :frozen?, :method
# s, :singleton_methods, :protected_methods, :private_methods, :public_methods, :instance_variables, :instance_variable_get, :instance_variable_set, :instance_variable_defined?, :remove_instance_
# variable, :instance_of?, :kind_of?, :is_a?, :tap, :send, :public_send, :respond_to?, :extend, :display, :method, :public_method, :singleton_method, :define_singleton_method, :object_id, :to_enu
# m, :enum_for, :equal?, :!, :!=, :instance_eval, :instance_exec, :__send__, :__id__]

# Same for Numbers:
# => [:to_s, :inspect, :-@, :+, :-, :*, :/, :div, :%, :modulo, :divmod, :fdiv, :**, :abs, :magnitude, :==, :===, :<=>, :>, :>=, :<, :<=, :~, :&, :|, :^, :[], :<<, :>>, :to_f, :size, :bit_length,
# :zero?, :odd?, :even?, :succ, :ord, :integer?, :upto, :downto, :times, :next, :pred, :chr, :to_i, :to_int, :floor, :ceil, :truncate, :round, :gcd, :lcm, :gcdlcm, :numerator, :denominator, :to_r
# , :rationalize, :singleton_method_added, :coerce, :i, :+@, :eql?, :remainder, :real?, :nonzero?, :step, :quo, :to_c, :real, :imaginary, :imag, :abs2, :arg, :angle, :phase, :rectangular, :rect,
# :polar, :conjugate, :conj, :between?, :nil?, :=~, :!~, :hash, :class, :singleton_class, :clone, :dup, :taint, :tainted?, :untaint, :untrust, :untrusted?, :trust, :freeze, :frozen?, :methods, :s
# ingleton_methods, :protected_methods, :private_methods, :public_methods, :instance_variables, :instance_variable_get, :instance_variable_set, :instance_variable_defined?, :remove_instance_varia
# ble, :instance_of?, :kind_of?, :is_a?, :tap, :send, :public_send, :respond_to?, :extend, :display, :method, :public_method, :singleton_method, :define_singleton_method, :object_id, :to_enum, :e
# num_for, :equal?, :!, :!=, :instance_eval, :instance_exec, :__send__, :__id__]

first_name = "Derek"

last_name = "Banas"

# You can combine or concatenate strings with +

full_name = first_name + " " + last_name

middle_name = "Justin"

# Combining strings with interpolation

full_name = "#{first_name} #{middle_name} #{last_name}"
puts full_name

# You can check if a string contains a string with include

puts full_name.include?("Justin")

# Get the length of a string

puts full_name.size

# Count the number of vowels

puts "Vowels : " + full_name.count("aeiou").to_s

# Count the consonants

puts "Consonants : " + full_name.count("^aeiou").to_s #^ bekomme was kein Vokal ist!

# You can check if a string starts with another string

puts full_name.start_with?("Banas")

# Return the index for the match

puts "Index : " + full_name.index("Banas").to_s

# Check equality of strings

puts "a == a : " + ("a" == "a").to_s

# Check if they are the same object

puts "\"a\".equal?(\"a\") : " + ("a".equal?"a").to_s #false
puts first_name.equal?first_name #true

# Changing Case

puts full_name.upcase
puts full_name.downcase
puts full_name.swapcase

# Stripping white space

full_name = "       " + full_name

full_name = full_name.lstrip
full_name = full_name.rstrip
full_name = full_name.strip  #loeschen whitespaces vorne und hinten

puts full_name

# Formatting Strings

puts full_name.rjust(20, '.') #fullname aufffuellen mit punkten von links bis 20 zeichen
puts full_name.ljust(20, '.') #fullname aufffuellen mit punkten von rechts bis 20 zeichen
puts full_name.center(20, '.') #fullname aufffuellen mittig, punkte links und rechts bis 20 zeichen

# Chop eliminates the last character

puts full_name.chop

# Chomp eliminates \n or a specific string

puts full_name.chomp
puts full_name.chomp('as')

# Delete deletes provided characters

puts full_name.delete("a")

# Split a string into an array

name_array = full_name.split(//) #split everywhere there is a new char
puts name_array

name_array = full_name.split(/ /) #split everywhere there is a space
puts name_array

# String Conversions

puts "a".to_i
puts "2".to_f
puts "2".to_sym

# Escape sequences
# \\  Backslash
# \'  Single-quote
# \"  Double-quote
# \a  Bell
# \b  Backspace
# \f  Formfeed
# \n  Newline
# \r  Carriage
# \t  Tab
# \v  Vertical tab