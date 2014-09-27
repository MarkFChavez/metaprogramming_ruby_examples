# class extension
module M
  def method
    'becomes a class method'
  end
end

class A
  # this is equivalent to `extend M`
  class << self
    # includes the module on the singleton class
    include M 
  end
end

A.method # => "becomes a class method"
