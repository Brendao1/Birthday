require 'sinatra'
set :session_birthday, 'birthday'


get '/' do
"Hello there!"
  erb :index
end


get '/happy-bday' do
  @name = params[:name]
  erb :wishes
end

   # p @name = params[:name]
   # p @last_name = params[:last_name]
   # p @age = params[:age]
