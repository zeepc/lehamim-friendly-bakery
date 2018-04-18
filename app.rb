require 'sinatra'
require 'sinatra/reloader'
require './main.rb'

get '/' do 

 erb :index

end

get '/:id' do

	if params[:id] == "about"


	erb :about

elsif params[:id] == "menu"
	# @forest_cake = Cake.new("Forest Fruits","Made with the finest chocolates from beligum, topped with fresh berries and house made jam. Perfect for any occasion!","$35")


	erb :menu

else
	erb :index

end

end

# get '/menu' do
# 	erb :menu
# end

