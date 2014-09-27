# around alias

class String
  alias_method :original_reverse, :reverse

  def reverse
    "xxx#{original_reverse}xxx"
  end
end

"mark".reverse # => "xxxkramxxx"
