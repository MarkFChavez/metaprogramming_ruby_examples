class Person
  def self.inherited(klass)
    puts "#{self} is now the parent of #{klass}"
  end

  def self.method_added(method)
    puts "New method added - #{method}"
  end
end

class Employee < Person
  def name; end
end
