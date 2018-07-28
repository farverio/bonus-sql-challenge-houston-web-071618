# Write methods that return SQL queries for each part of the challeng here

def guest_with_most_appearances
  "SELECT guest_name FROM guests GROUP BY guest_name ORDER BY COUNT(guest_name) DESC LIMIT 1;"
end

def most_popular_profession_by_year
  "SELECT year, occupation, COUNT(occupation) FROM guests GROUP BY year;"
end

def most_popular_profession_overall
  "SELECT occupation, COUNT(occupation) FROM guests;"
end

def guests_named_bill
  "SELECT COUNT(substr(guest_name, 1, pos-1)) AS name_count FROM (SELECT *, INSTR(guest_name, ' ') AS pos FROM guests) GROUP BY first_name HAVING first_name='Bill';"
end 

def patrick_stewart_dates
  "SELECT show_date FROM guests WHERE guest_name = 'Patrick Stewart';"
end 

def highest_guest_year
  "SELECT year FROM guests GROUP BY year ORDER BY COUNT(year) DESC LIMIT 1;"
end

def group_popularity_by_year
  "SELECT year, group_type, COUNT(id) FROM guests GROUP BY year;"
end


