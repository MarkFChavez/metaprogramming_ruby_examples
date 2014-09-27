# flat scope

class Person; end

name = "mark"

person = Person.new.instance_eval do # => 
  puts name
end
