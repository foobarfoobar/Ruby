require 'yaml'
require 'json'

class Person
  
  def initialize(firstname, lastname)
    @firstname = firstname
    @lastname = lastname
  end
  
  # Getter
  def firstname
    @firstname
  end
  
  def lastname
    @lastname
  end
  
end

foo = Person.new("Foo", "Bar")

puts foo
puts foo.to_s
puts foo.to_yaml
puts foo.to_json
