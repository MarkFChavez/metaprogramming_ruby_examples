class Person
  def self.inherited(klass)
    puts "#{self} is now the parent of #{klass}"
  end

  def self.method_added(method)
    puts "New method added - #{method}"
  end

  def self.method_undefined(method)
    puts "Method undefined - #{method}"
  end

  def self.method_removed(method)
    puts "Method removed - #{method}"
  end

  def self.singleton_method_added(method)
    puts "Singleton method added- #{method}"
  end
end

class Employee < Person
  def name; end
  def self.awesome; end
  # undef_method :name
  remove_method :name
end

def Employee.party!
  "party!"
end
