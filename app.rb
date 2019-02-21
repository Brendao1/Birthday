require 'sinatra'
set :session_birthday, 'birthday'


get '/' do
"Hello there!"
  erb :index 
end
