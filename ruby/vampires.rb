def interview_test
puts "How many employees are to be interviwed today?(numbers)"
total_count = gets.chomp.to_i
for count in 1..total_count
puts "Welcome to the interview\nplease be seated!"
puts "What is your name?"
person_name = gets.chomp
puts "How old are you?"
age = gets.chomp.to_i
puts "What year were you born?"
year = gets.chomp.to_i
current_year = Time.new.year
birth_year = current_year - year
if age != birth_year then correct_age = false else correct_age = true end
puts "Our company cafeteria serves garlic bread. Should we order some for you? (y/n)"
garlic_taste = gets.chomp
if garlic_taste.upcase == "N" || garlic_taste.upcase == "NO" || garlic_taste == ""
  garlic_taste = false
else
  garlic_taste = true
end
puts "Would you like to enroll in the company's health insurance?(y/n)"
health_insurance = gets.chomp
if health_insurance.upcase == "Y" || health_insurance.upcase == "YES" || health_insurance.upcase == "WAIVES"
  health_insurance = true
else
  health_insurance = false
end
allergy_test(count, person_name, age, year, correct_age, garlic_taste, health_insurance)
end
puts "Actually, never mind! What do these questions have to do with anything? Let's all be friends."
end


def allergy_test(count, person_name, age, year, correct_age, garlic_taste, health_insurance)
puts "Do you have any allergies? (y/n)"
allergies = gets.chomp
if (allergies.upcase == "Y" || allergies.upcase == "YES")
	allergy_type = ""
	while (allergy_type.upcase != "SUNSHINE" && allergy_type.upcase != "DONE")
		puts "What allergy do you have? (if nothing enter - Done)"
		allergy_type = gets.chomp 
	end
	if allergy_type.upcase == "SUNSHINE" 
		result = "Probably a vampire"
		display_details(count, person_name, age, year, garlic_taste, health_insurance,result)
    else
    vampire_test(count, person_name, age, year, correct_age, garlic_taste, health_insurance, result)
  end
else
 vampire_test(count, person_name, age, year, correct_age, garlic_taste, health_insurance, result)
end
end


def vampire_test(count, person_name, age, year,correct_age, garlic_taste, health_insurance, result)
if person_name.upcase == "DRAKE CULA" || person_name.upcase == "TU FANG"
  result = "Definitely a vampire"
elsif correct_age == true && garlic_taste == true  && health_insurance == true
  result = "Probably not a vampire."
elsif correct_age == false && garlic_taste == false && health_insurance == false
  result = "Almost certainly a vampire."
elsif correct_age == false && garlic_taste == false || health_insurance == false
  result = "Probably a vampire."
else
  result = "Results inconclusive."
end
display_details(count, person_name, age, year, garlic_taste, health_insurance, result) 
end


def display_details(count, person_name, age, year, garlic_taste, health_insurance,result)
puts "Thanks for coming!"
puts "The employee#{count} details:\nThe name of the employee is #{person_name}, #{age} years old. Was born in #{year}."
puts "This employee #{if garlic_taste; "likes "; else " hates "; end} garlic bread."
puts "This employee #{if health_insurance ; "wants to enroll to "; else "waives "; end} the company's health insurance."
puts "According to the interview this employee : #{result}"
end

puts interview_test
