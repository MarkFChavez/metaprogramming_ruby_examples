
def sandbox
  raise "No block specified" unless block_given?

  proc {
    $SAFE = 2
    yield
  }.call
end

begin # => 
  sandbox { File.delete 'sandbox.rb' } # => 
rescue Exception => ex
  puts ex
end
