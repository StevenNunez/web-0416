require 'sqlite3'
require 'pry'
db = SQLite3::Database.new('chinook.db')
query = <<-SQL
  SELECT *
  FROM fans
  WHERE id < 10
SQL
p db.execute(query)
