# pry gem makes use of this feature

class Person
  def name
    @x = "mark joel chavez"
    binding # returns a binding instance
  end
end

eval "@x", Person.new.name # => "mark joel chavez"
