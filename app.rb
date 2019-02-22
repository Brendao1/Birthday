require 'date'
require 'sinatra'
set :session_birthday, 'birthday'


get '/' do
"Hello there!"
  erb :index
end


post '/happy-bday' do
  @name = params[:name]
  @day = params[:day]
  @month = params[:month]
  @bday = Date.new(@day.to_i, @month.to_i)

# puts DateTime.parse("2011-06-02T23:59:59+05:30").to_date.to_s
# Time object is stored as a number of seconds, while a
# DateTime object is stored as a number of days,
  # p @today = time.strftime("%d, %m")
  erb :wishes

# use this to print out the variables....
  # p @name
  # p @day
  # p @month
  # p "The date today"
  # p @today = Date.today
  # p @today.strftime("%d, %m")
  # p "The birthday"
  # p @bday

end
