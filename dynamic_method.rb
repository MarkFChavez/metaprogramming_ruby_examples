# dynamic method

class Animal
  class << self
    define_method :class_method do
      'hello from class method'
    end
  end

  define_method :instance_method do
    'hello from instance method'
  end
end

Animal.class_method # => "hello from class method"
Animal.new.instance_method # => "hello from instance method"
