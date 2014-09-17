# around alias example

class Fixnum
  alias_method :orig_plus, :+

  def +(value)
    self.orig_plus(value).orig_plus(1)
  end
end

10 + 10 # => 21
