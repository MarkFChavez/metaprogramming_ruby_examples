class Person
  define_method :without_parameters do
    "This is a method without a block"
  end

  define_method :with_parameter do |a|
    "This method has a parameter with value #{a}"
  end

  # singleton method
  class << self
    define_method :singleton_sample do
      "This method is a class method"
    end
  end   
end

Person.new.without_parameters # => "This is a method without a block"
Person.new.with_parameter(24) # => "This method has a parameter with value 24"
Person.singleton_sample # => "This method is a class method"

Person.ancestors # => [Person, Object, Kernel, BasicObject]
