# clean room

class C
  def instance_method 
    "instance method"
  end
end

C.new.instance_eval { instance_method } # => "instance method"
