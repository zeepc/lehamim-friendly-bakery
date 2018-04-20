require 'sinatra'
require 'sinatra/reloader'
require 'sendgrid-ruby'
require_relative './main.rb'
include  SendGrid


get '/' do 
 erb :index
end

get '/:id' do

	if params[:id] == "about"
		erb :about
	elsif params[:id] == "cake"
		forest_cake = Cake.new({cake:"Forest Fruits",desc:"Made with the finest chocolates from beligum, topped with fresh berries and house made jam. Perfect for any occasion!", price:"$35" })
		@forest = forest_cake.type
		@forest.each do |key, value|
			@forest_name = @forest[:cake]
		    @forest_desc = @forest[:desc] 
			@forest_price = @forest[:price]
			puts @forest_name
			puts @forest_desc
			puts @forest_price
		end

		babka_cake = Cake.new({cake:"Choco Babka",desc:"Swirly, old world goodness. The perfect companion for coffee or tea.", price:"$12" })
		@babka = babka_cake.type
		@babka.each do |key, value|
			@babka_name = @babka[:cake]
		    @babka_desc = @babka[:desc] 
			@babka_price = @babka[:price]
			puts @babka_name
			puts @babka_desc
			puts @babka_price
		end

		cherry_cake = Cake.new({cake:"Cherry Citrus",desc:"Mayer lemon and poppyseed cake, with Amarena cherry filling.", price:"$42" })
		@cherry = cherry_cake.type
		@cherry.each do |key, value|
			@cherry_name = @cherry[:cake]
		    @cherry_desc = @cherry[:desc] 
			@cherry_price = @cherry[:price]
			puts @cherry_name 
		    puts @cherry_desc 
			puts @cherry_price
		end


		erb :cake

	elsif params[:id] == "cookies"

		choco_cookie = Cookie.new({cookie:"ChocoChip",desc:"Chocolaty, nostalgic goodness.", price:"$4.50" })
		@choc = choco_cookie.type
		@choc.each do |key, value|
			@choc_name = @choc[:cookie]
		    @choc_desc = @choc[:desc] 
			@choc_price = @choc[:price]
			puts @choc_name 
		    puts @choc_desc 
			puts @choc_price
		end

		pink_cookie = Cookie.new({cookie:"Berry Drop",desc:"Raspberry and pomegranate almond cookies", price:"$2.50" })
		@pink = pink_cookie.type
		@pink.each do |key, value|
			@pink_name = @pink[:cookie]
		    @pink_desc = @pink[:desc] 
			@pink_price = @pink[:price]
			puts @pink_name 
		    puts @pink_desc 
			puts @pink_price
		end

		mac_cookie = Cookie.new({cookie:"Berry Drop",desc:"Raspberry and pomegranate almond cookies", price:"$2.50" })
		@mac = mac_cookie.type
		@mac.each do |key, value|
			@mac_name = @pink[:cookie]
		    @mac_desc = @pink[:desc] 
			@mac_price = @pink[:price]
			puts @mac_name 
		    puts @mac_desc 
			puts @mac_price
		end

		erb :cookies

	elsif params[:id] == "muffins"

		multi_muffin = Muffin.new({muffin:"Assorted",desc:"Assortment of muffins.", price:"$24.50" })
		@multi = multi_muffin.type
		@multi.each do |key, value|
			@multi_name = @multi[:muffin]
		    @multi_desc = @multi[:desc] 
			@multi_price = @multi[:price]
			puts @multi_name 
		    puts @multi_desc 
			puts @multi_price
		end
	
		almond_muffin = Muffin.new({muffin:"Almond",desc:"Chocolaty, nostalgic goodness.", price:"$20.50" })
		@almond = almond_muffin.type
		@almond.each do |key, value|
			@almond_name = @almond[:muffin]
		    @almond_desc = @almond[:desc] 
			@almond_price = @almond[:price]
			puts @almond_name 
		    puts @almond_desc 
			puts @almond_price
		end

		berry_muffin = Muffin.new({muffin:"Berry",desc:"Seasonal berry muffins", price:"$20.50" })
		@berry = berry_muffin.type
		@berry.each do |key, value|
			@berry_name = @berry[:muffin]
		    @berry_desc = @berry[:desc] 
			@berry_price = @berry[:price]
			puts @berry_name 
		    puts @berry_desc 
			puts @berry_price
		end


		erb :muffins


	else
		erb :index
	end

end

# POST

post '/contact' do
  @email = params[:email]
 
from = Email.new(email: @email)
to = Email.new(email: 'zperezcanals@gmail.com')
subject = 'Here is your 10% Off!'
content = Content.new(type: 'text/plain', value: "Thank you for signing up! 
	Enter HELLOZEE for 10% off your firsr order.

	Menu items:
	cookies $20/dz $1.95/ind
	cakes	$24 or $7.95/slice
	muffins $5

	Watch for updates to our menu in the future!")
mail = Mail.new(from, subject, to, content)

sg = SendGrid::API.new(api_key: ENV['SENDGRID'])
response = sg.client.mail._('send').post(request_body: mail.to_json)

erb :index

end



