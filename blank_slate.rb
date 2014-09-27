# blank slate
# simply extend BasicObject

class C < BasicObject
  def method_missing(name, *args, &block)
    "This is an undefined method"
  end
end

C.to_s # => "C"
