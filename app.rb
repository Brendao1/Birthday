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

  @bday = Date.new(@day.to_i, @month.to_i).strftime("%y, %m")
  # @bday = @bday.strftime("%y, %m")

  @today = Date.today.strftime("%d, %m")
  # @today.strftime("%d, %m")
  erb :wishes

  # if @bday == @today
  #   redirect '/today'
  # end

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
  p @name
  p @day
  p @month
  # p "The date today"
  # # p @today = Date.today
  # p @today.strftime("%d, %m")
  # p "The birthday"
  # p @bday
