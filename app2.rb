require 'date'
require 'sinatra'
set :session_birthday, 'birthday'


get '/' do
"Hello there!"
  erb :index
end


post '/details' do
  @name = params[:name]
  @day = params[:day]
  @month = params[:month]

  @bday = Date.new(@day.to_i, @month.to_i)
  @bday = @bday.strftime("%y, %m")
  @today = Date.today
  @today.strftime("%d, %m")

#   if @bday == @today
#   redirect '/wishes'
# else
#   redirect '/'
end

# get '/wishes' do
#   @bday = Date.new(@day.to_i, @month.to_i)
#   @bday = @bday.strftime("%y, %m")
#   @today = Date.today
#   @today.strftime("%d, %m")
#   erb :wishes
# end

# use this to print out the variables....
  # p @name
  # p @day
  # p @month
  # p "The date today"
  # # p @today = Date.today
  # p @today.strftime("%d, %m")
  # p "The birthday"
  # p @bday

# p @name
# p @day
# p @month
# p "The date today"
# p @today = Date.today
# p @today.strftime("%d, %m")
# p "The birthday"
# p @bday
