#PSEUDOCODE
#Create a method 
#Get form details from the user: first name,last name,age, family members, decor theme etc.
#Use hash symblos to store the user inputs. And convert the user input to appropriate datatype.
#Display the user details if they want.
#Ask them "do they want to do any modification". 
#If yes, then ask them to enter the string/symbol. Else, if they say "none", skip it.
#Print the latest version of the details and then exit the program. 

def user_info 
	puts "INTERIOR DECORATIONS"
	puts "--------------------"
	puts "Welcome! Please answer the below questions."
	user_details = Hash.new
	puts "Enter your Frist name: "
	user_details[:first_name] = gets.chomp
	puts "Enter your Last name: "
	user_details[:last_name] = gets.chomp
	puts "What is your age: "
	user_details[:age] = gets.chomp.to_i
	puts "How many family members are staying in your house? (number): "
	user_details[:family_members] = gets.chomp.to_i
	puts "Have you ever done interior decoration for your home?( y / n ): "
	user_details[:interior_decoration_history] = gets.chomp
	until user_details[:interior_decoration_history].upcase == "Y" || user_details[:interior_decoration_history].upcase == "N" 
		if user_details[:interior_decoration_history].upcase == "Y" 
			user_details[:interior_decoration_history] = true
		elsif user_details[:interior_decoration_history].upcase == "N" 
			user_details[:interior_decoration_history] = false
		else
			puts "Please enter a valid data. Type (y/n): "	
			user_details[:interior_decoration_history] = gets.chomp
		end
	end 
    puts "Are you the landlord or a tenant ?: (L / T )"
    user_details[:owner_type] = gets.chomp
    if user_details[:owner_type].upcase == "L"
    	user_details[:owner_type] = "I'm the landlord"
    elsif user_details[:owner_type].upcase == "T"
    	user_details[:owner_type] = "I'm a tenant"
    else
    	user_details[:owner_type] = "Not mentioned / Invalid data" 
    end
    puts "What is your favorite interior decoration theme?"
    fav_decor = ["American Traditional","Art Nouveau","Inidan","Modern","French","Medieval"]
    puts fav_decor
    puts "Enter your option from the list or type your own option or (none)"
    user_details[:decor_theme] = gets.chomp
    info_display(user_details)
end

def info_display(user_details)
	puts "Your details:(Latest version)"
	puts "-------------"
	user_details.each do |key, value|
		puts key.to_s + ':' + value.to_s
	end
	puts "Do you want to modify or update any information? (yes/none): "
	data_modify = gets.chomp
	while data_modify.upcase != "YES" || data_modify.upcase != "NONE"
		if data_modify.upcase == "YES" 
			info_modify(user_details)
		elsif data_modify.upcase == "NONE"
			puts "Thanks for filling the form!"
			exit
		else
			puts "Invalid option. Press (yes/none):"
			data_modify = gets.chomp
		end
	end
end


def info_modify(user_details)
	puts "Which data do you want to modify? "
	hash_list = ["First Name","Last Name","Age","Family Members","Interior Decoration History","Owner Type","Decor Theme"]
	puts hash_list
	puts "Choose any one from the list  and type it here: "
	modify = gets.chomp
	if user_details[modify.gsub(/\s+/, "_").downcase.to_sym] != nil
		puts "Your old value is: #{user_details[modify.gsub(/\s+/, "_").downcase.to_sym]}"
		puts "Enter your new value: "
		user_details[modify.gsub(/\s+/, "_").downcase.to_sym] = gets.chomp
	else
		puts "Invalid value. Sorry"
	end
	info_display(user_details)
end 
user_info
