# require gems
require 'sinatra'
require 'sqlite3'

db = SQLite3::Database.new("students.db")
db.results_as_hash = true

# write a basic GET route
# add a query parameter
# GET /
get '/' do
  "#{params[:name]} is #{params[:age]} years old."
end

# write a GET route with
# route parameters
get '/about/:person' do
  person = params[:person]
  "#{person} is a programmer, and #{person} is learning Sinatra."
end

get '/:person_1/loves/:person_2' do
  "#{params[:person_1]} loves #{params[:person_2]}"
end

# write a GET route that retrieves
# all student data
get '/students' do
  students = db.execute("SELECT * FROM students")
  response = ""
  students.each do |student|
    response << "ID: #{student['id']}<br>"
    response << "Name: #{student['name']}<br>"
    response << "Age: #{student['age']}<br>"
    response << "Campus: #{student['campus']}<br><br>"
  end
  response
end

# write a GET route that retrieves
# a particular student

get '/students/:id' do
  student = db.execute("SELECT * FROM students WHERE id=?", [params[:id]])[0]
  student.to_s
end

#Release 0: Add Routes
#A /contact route that displays an address (you can make up the address).

get '/contact' do
  " <!DOCTYPE html>
<html lang='en'>
   <head>
      <style>
         .contactdiv {
         width:30%;
         background:#F9EECF;
         border:1px dotted black;
         }
      </style>
      <title>Submit form</title>
   </head>
   <body bgcolor= '#E6E6FA'>
      <h1 style='text-align: center;'> You can contact me by email or phone.</h1>
      <center>
         <div class='contactdiv'>
            <p>
               <STRONG><i><u> My contact details</u></i></STRONG>
               <br>
               <em> <b> Email:</b> harini1234@gmail.com </em>
            </p>
            <p><em> <b> Phone:</b> 1-800-345-6078</em></p>
            <strong> Address: </strong>
            <address>
               Harini Balakrishnan<br>
               63 Retina, <br>
               39046 Orentz (BZ),<br> 
               San Francisco, CA.
            </address>
            <br>
         </div>
         <br>
         <footer>
            <p> <em>Posted by: Harini</em>
               &copy; all rights reserve 2017.
            </p>
         </footer>
      </center>
   </body>
</html> "
end


# A /great_job route that can take a person's name as a query parameter (not a route parameter) and say "Good job, [person's name]!". If the query parameter is not present, the route simply says "Good job!"

get '/great_job/' do
  id = params[:id]
  if id 
    person3 = db.execute("SELECT * FROM students WHERE id=?",id)[0]
    name = person3["name"]
    "Great job #{name}!"
  else
    "Great job!"
  end
end
# A route that uses route parameters to add two numbers and respond with the result. The data types are tricky here -- when will the data need to be (or arrive as) a string?

# The route parameters are strings. If we add both (route parameters)strings it concats them. But to get the arithmetic result for two numbers, we must convert the two parameters into integers. I have used .to_i to convert them from string to integer.

get '/add/:value1/:value2' do
  "#{add(params[:value1].to_i,params[:value2].to_i)}"
end
# A method that adds two integer values.
def add(x,y)
    x + y
end

# Make a route that allows the user to search the database in some way -- maybe for students who have a certain first name, or some other attribute. If you like, you can simply modify the home page to take a query parameter, and filter the students displayed if a query parameter is present.

get '/search/' do
  age = params[:age]
  total = params[:total]
  id = params[:id]
  if age
     details = db.execute('SELECT * FROM students WHERE age=?',age)[0]
    "#{details['name']} is #{age} years old."
  elsif total
    students = db.execute("SELECT * FROM students")
    "There are #{students.length} students in total."  
  elsif id
    student = db.execute("SELECT * FROM students WHERE id=?", [params[:id]])[0]
    result = ""
    result << "The student details:<br>"
    result << "ID: #{student['id']}<br>"
    result << "Name: #{student["name"]}<br>"
    result << "Age: #{student['age']}<br>"
    result << "Campus: #{student['campus']}"
    result
  else
    "There is no category to search."
  end
end



=begin 
1. Is Sinatra the only web app library in Ruby? What are some others?

 There are many web-app libraries:
 Sinatra: Sinatra is a DSL for quickly creating web applications in Ruby with minimal effort.
 Rack: Rack provides a minimal, modular and adaptable interface for developing web applications in Ruby. By wrapping HTTP requests and responses in the simplest way possible, it unifies and distills the API for web servers, web frameworks, and software in between (the so-called middleware) into a single method call. Also see http://rack.github.io/.
 Ruby on Rails: Ruby on Rails is a full-stack web framework optimized for programmer happiness and sustainable productivity. It encourages beautiful code by favoring convention over configuration.
 Padrino: The Godfather of Sinatra provides a full-stack agnostic framework on top of Sinatra.
 Cramp: Cramp is a framework for developing asynchronous web applications.
 Cuba: Cuba is a microframework for web applications.
 Merb :Merb. Pocket rocket web framework.
 Camping: minature rails for stay-at-home moms.
 Hobo: The web app builder for Rails.
 Ramaze: Ramaze is a simple and modular web framework.
 Raptor: Nothing to see new.
 pakyow: Modern web framework for Ruby
 Renee :The super-friendly web framework.
 Rango: Rango is ultralightweight, ultracustomizable, ultracool web framework deeply inspired by Django.
 Scorched: A light-weight Sinatra-inspired web framework for web sites and applications of any size.
 lattice: A concurrent realtime web framework for Ruby
 Harbor
 vanilla: A bliki-type web content thing.
 marley: Marley is a framework for quickly building RESTful web services and applications.
 Bats: REST enabled Rack powered web-micro-framework (holy buzzwords Batman!)
 Espresso: Scalable Framework aimed at Speed and Simplicity
 strelka : Strelka is a framework for creating and deploying Mongrel2[http://mongrel2.org/] web applications in Ruby. It's named after a lesser known {Russian cosmonaut}
 salad: Is web framework that makes common things simple, and uncommon things possible.
 gin: Gin is a small Ruby web framework, built on Rack, which borrows from Sinatra expressiveness, and targets larger applications.

2. Are SQLite and the sqlite3 gem your only options for using a database with Sinatra? What are some others?

DBI can interface with the following:
ADO (ActiveX Data Objects)
DB2
Frontbase
mSQL
MySQL
ODBC
Oracle
OCI8 (Oracle)
PostgreSQL
Proxy/Server
SQLite
SQLRelay

3. What is meant by the term web stack?
A Web stack is the collection of software required for Web development. ... LAMP is one commonly used Web stack. It uses Linux as the operating system, Apache as the Web server, MySQL as the relational database management system and PHP as the object-oriented scripting language.
MEAN - It includes mongoDB,express web-app, Node.js and Angular.js
Ruby on Rails- 
=end
