require "minitest/autorun"
require "minitest/pride"

module Hook
  module Body
    def self.included(klass)
      klass.extend ClassMethods
    end

    def this_is_an_instance_method
      "instance method"
    end

    module ClassMethods
      def this_is_a_class_method
        "class method"
      end
    end
  end
end

class Person
  include Hook::Body
end

class TestHookClassMethods < MiniTest::Test
  def test_that_it_has_new_class_methods
    assert_equal "class method", Person.this_is_a_class_method
  end

  def test_that_it_has_instance_method
    assert_equal "instance method", Person.new.this_is_an_instance_method
  end
end

