require 'sqlite3'
require 'csv'
require 'pry'

db = SQLite3::Database.new ":daily_show:"

create_table = <<-SQL 
  CREATE TABLE IF NOT EXISTS guests (
    id INTEGER PRIMARY KEY,
    year INTEGER,
    occupation TEXT,
    show_date TEXT,
    group_type TEXT,
    guest_name TEXT
  );
SQL

db.execute(create_table)

CSV.foreach('./daily_show_guests.csv', headers: true) do |row|
  insert_row = <<-SQL 
    INSERT INTO guests (year, occupation, show_date, group_type, guest_name) VALUES (?, ?, ?, ?, ?);
  SQL
  
  db.execute(insert_row, row[0], row[1], row[2], row[3], row[4])
end