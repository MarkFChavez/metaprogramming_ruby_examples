# delegator
require 'delegate'

class Person
  def name
    'mark'
  end
end

class Contact < SimpleDelegator
  def initialize(obj)
    super obj
  end
end

contact = Contact.new(Person.new)
contact.name # => "mark"

# dynamic proxy
class Applicant
  def initialize(obj)
    @target = obj
  end

  def method_missing(method_name, *args, &block)
    @target.send(method_name, *args, &block)
  end
end

applicant = Applicant.new(Person.new)
applicant.name # => "mark"
