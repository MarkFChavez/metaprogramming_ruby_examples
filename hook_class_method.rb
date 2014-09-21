require "minitest/autorun"
require "minitest/pride"

module Hook
  module Body
    def self.included(klass)
      klass.extend ClassMethods
    end

    module ClassMethods
      def this_is_a_class_method
        true
      end
    end
  end
end

class Person
  include Hook::Body
end

class TestHookClassMethods < MiniTest::Test
  def test_that_it_has_new_class_methods
    assert_equal true, Person.this_is_a_class_method
  end
end
