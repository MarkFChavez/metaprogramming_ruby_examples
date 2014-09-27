# dynamic dispatch

method = :reverse

result = case method
         when :reverse
           "mark".send(method)
         else
           "mark".send(:capitalize)
         end

result # => "kram"
