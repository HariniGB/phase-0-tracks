puts "Welcome to the interview\nplease be seated!"
puts "What is your name?"
name = gets.chomp
puts "How old are you?"
age = gets.chomp.to_i
puts "What year were you born?"
year = gets.chomp
current_year = Date.today.year 
birth_year = current_year - year
    if age != birth_year 
puts "Our company cafeteria serves garlic bread. Should we order some for you? (y/n)"
garlic_taste = gets.chomp
if garlic_taste.upcase == "N" || garlic_taste.upcase == "NO"  || garlic_taste == ""
	garlic_taste = false
else
	garlic_taste = true
end
puts "There is a famous Italian restaurant next to our office. It will be great to eat lunch with you.\nDo you like Italian foods?(y/n)"
italian_taste = gets.chomp
if italian_taste.upcase == "N" || italian_taste.upcase == "NO"  || italian_taste == ""
	italian_taste = false
else
	italian_taste = true
end
puts "Would you like to enroll in the company's health insurance?(y/n)"
health_insurance = gets.chomp
if health_insurance.upcase == "Y" || health_insurance.upcase == "YES"
	health_insurance = true
else
	health_insurance = false
end 


