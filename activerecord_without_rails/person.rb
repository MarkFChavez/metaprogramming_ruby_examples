require "active_record"

ActiveRecord::Base.establish_connection(
  adapter: "sqlite3",
  database: "testfile.db"
)

# require_relative "migrations"

class Person < ActiveRecord::Base
end

person = Person.new
person.name = "Mark"
person.save!

p Person.all
