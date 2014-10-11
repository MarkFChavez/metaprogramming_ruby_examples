class State
  def signal
    raise "Not implemented"
  end

  def next_state
    raise "Not implemented"
  end

  def ring_warning_bell
    puts "Ring ring ring!"
  end

  def to_s
    self.class.to_s.downcase
  end
end

class Stop < State
  def color
    "red"
  end

  def signal
    puts "Turning on #{color} lamp" 
  end

  def next_state
    Caution.new.to_s
  end
end

class Caution < State
  def color
    "yellow"
  end

  def signal
    ring_warning_bell
    puts "Turning on #{color} lamp"
  end

  def next_state
    Proceed.new.to_s
  end
end

class Proceed < State
  def color
    "green"
  end

  def signal
    puts "Turning on #{color} lamp"
  end

  def next_state
    Caution.new.to_s
  end
end

class TrafficLight
  def change_to(state)
    @state = state
  end

  def signal
    @state.signal
  end

  def next_state
    @state.next_state
  end
end

light = TrafficLight.new
light.change_to(Proceed.new)
light.signal
puts "Next state: #{light.next_state.inspect}"

light.change_to(Stop.new)
light.signal
puts "Next state: #{light.next_state.inspect}"

