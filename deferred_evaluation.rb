# deferred evaluation

class Person
  def initialize(&block)
    @my_block = block
  end

  def execute
    @my_block.call
  end
end

person = Person.new { @name = "mark" }
person.execute # => "mark"

