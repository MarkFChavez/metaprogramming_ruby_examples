require 'active_record'

ActiveRecord::Base.establish_connection(
  adapter: "sqlite3",
  database: "dbfile"
)

class Duck < ActiveRecord::Base
end

duck = Duck.new
duck.name = "D"

p duck

