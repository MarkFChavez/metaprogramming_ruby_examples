class Object
  def a_method; "method"; end
end

module Kernel
  def b_method; "b method"; end
end

a_method # => "method"
b_method # => "b method"
