# hooks

$INHERITORS = []
$METHODS = []

class Parent
  def self.inherited(subclass)
    $INHERITORS << subclass
  end

  def self.method_added(method)
    $METHODS << method
  end
end

class A < Parent
  def for_a; end
end

class B < Parent;
  def for_b; end
end

$INHERITORS # => [A, B]
$METHODS # => [:for_a, :for_b]


