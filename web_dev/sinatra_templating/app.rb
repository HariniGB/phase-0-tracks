# require gems
require 'sinatra'
require 'sqlite3'

set :public_folder, File.dirname(__FILE__) + '/static'

db = SQLite3::Database.new("students.db")
db.results_as_hash = true

# show students on the home page
get '/' do
  @student_with_subject = db.execute("SELECT name,subject_name FROM students INNER JOIN subject WHERE students.id = subject.student_id")
  @students = db.execute("SELECT * FROM students")
  @subjects = db.execute("SELECT * FROM subject")
  erb :home
end

get '/students/new' do
  erb :new_student
end

# Create a get http link to print the new_subject erb file.
get '/subjects/new' do
  erb :new_subject
end

# create new students via
# a form
post '/students' do
  db.execute("INSERT INTO students (name, campus, age) VALUES (?,?,?)", [params['name'], params['campus'], params['age'].to_i])
  redirect '/'
end


#create new subject via
# a form
get '/new_subject' do
    db.execute("INSERT INTO subject (subject_name, student_id) VALUES (?,?)", [params['subject_name'], params['student_id'].to_i])
  redirect '/'
end 

# post '/new_subject' do
#   db.execute("INSERT INTO subject (subject_name, student_id) VALUES (?,?)", [params['subject_name'], params['student_id'].to_i])
#   redirect '/'
# end

# add static resources