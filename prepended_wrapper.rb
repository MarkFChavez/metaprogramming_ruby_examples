module Parent
  def name
    "david"
  end
end

class Person
  prepend Parent

  def name
    "mark"
  end
end

Person.new.name # => "david"
