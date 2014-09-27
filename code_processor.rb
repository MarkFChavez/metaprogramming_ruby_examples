# code processor using eval

class C
  class << self
    def execute(soc)
      puts eval(soc)
    end
  end

  execute  "'mark'"
  execute "1 + 2"
  execute "'joel'.reverse"
end

C.new # => #<C:0x0000010200f020>
# >> mark
# >> 3
# >> leoj
