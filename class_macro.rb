# class macro

class Object
  def self.awesome(*names)
    puts "You are awesome #{names.join(' ')}"
  end
end

class C
  awesome "mark", "joel"
end

C # => C
# >> You are awesome mark joel
