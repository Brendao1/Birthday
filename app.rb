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
  # @bday = Date.new(@day.to_i, @month.to_i).strftime("%d, %m")
  @today = Date.today
# @today = Date.today.strftime("%d, %m")
  # @today.strftime("%d, %m")
  erb :wishes

  # p @name
  # p @day
  # p @month
  # p "The date today"
  # # p @today = Date.today
  # p @today.strftime("%d, %m")
  # p "The birthday"
  # p @bday

end


# use this to print out the variables....
  # p @name
  # p @day
  # p @month
  # p "The date today"
  # # p @today = Date.today
  # p @today.strftime("%d, %m")
  # p "The birthday"
  # p @bday
