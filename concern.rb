require 'active_support/concern'

module Likeable
  extend ActiveSupport::Concern

  included do
    def name
      "joel"
    end
  end

  module ClassMethods
    def name
      "mark"
    end
  end
end

class Person
  include Likeable
end

Person.name # => "mark"
