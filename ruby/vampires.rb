
puts "Welcome to the interview\nplease be seated!"
puts "What is your name?"
person_name = gets.chomp
puts "How old are you?"
age = gets.chomp.to_i
puts "What year were you born?"
year = gets.chomp.to_i
current_year = Time.new.year 
birth_year = current_year - year
 if age != birth_year  then correct_age = false else correct_age = true end
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
if health_insurance.upcase == "Y" || health_insurance.upcase == "YES" || health_insurance.upcase == "WAIVES"
	health_insurance = true
else
	health_insurance = false
end 
if person_name.upcase == "DRAKE CULA" || person_name.upcase == "TU FANG"
	result = "Definitely a vampire"
elsif correct_age == true && (garlic_taste == true || italian_taste == true) && health_insurance == true 
   result = "Probably not a vampire."
elsif correct_age == false && (garlic_taste == false || italian_taste == false) || health_insurance == false
	result = "Probably a vampire."
elsif  correct_age == false && (garlic_taste == false || italian_taste == false) && health_insurance == false
    result = "Almost certainly a vampire."
else
	result = "Results inconclusive."
end
puts "The employee details:\nThe name of the emplyee is #{person_name}, #{age} years old. Was born in #{year}."
puts "This employee #{if garlic_taste; "likes"; else "hates"; end} garlic bread."
puts "This employee #{if health_insurance ; "wants to enroll to"; else "waives"; end} the company's health insurance."
puts "According to the interview this employee : #{result}."
