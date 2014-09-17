Person = Class.new

Person.instance_eval do
  def hi(name)
    "Hi #{name}"
  end
end
Person.hi("mark") # => "Hi mark"

Person.class_eval do
  def hi(name)
    "Hi #{name}"
  end
end
Person.new.hi("erik") # => "Hi erik"
