# class instance variable

class C
  @instance_variable_for_class = "Mark Joel Chavez"

  def self.awesome
    @instance_variable_for_class
  end

  def awesome
    @instance_variable_for_class ||= []
  end
end

C.awesome # => 
C.new.awesome # => 
# ~> -:11: syntax error, unexpected '='
# ~>     @instance_variable_for_class || = []
# ~>                                      ^
