require 'date'
require 'sinatra'
set :session_birthday, 'birthday'
CURRENT_YEAR = 2019

get '/' do
"Hello there!"
  erb :index
end


post '/happy-bday' do
  @name = params[:name]
  @day = params[:day]
  @month = params[:month]
  @year = CURRENT_YEAR
  # @bday = Date.new(@day.to_i, @month.to_i)

  @bday = Date.new(CURRENT_YEAR, @month.to_i, @day.to_i)
  @today = Date.today

  @diff1 = (@bday - @today).to_i
  @diff2 = 365 - (@today + @bday).to_i

  erb :wishes
end
