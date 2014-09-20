# a tainted string is a value that you get from external sources 
# such as web forms, files or system variables

name = gets()
greeting = "Hi #{name}"

puts greeting.tainted?
