require 'sinatra'
require 'sinatra/reloader'

get '/' do 

 erb :index
 
end

get '/:id' do

	if params[:id] == "about"

	erb :about

elsif params[:id] == "menu"

	erb :menu

else
	erb :index

end

end

# get '/menu' do
# 	erb :menu
# end

