class Cake
	attr_accessor :cake, :description, :price
	def intialize(cake,description,price)
		@cake = cake
		@description = description
		@price = price
	end
end

class Cookie
	attr_accessor :cookie, :description, :price
	def intialize(cookie,description,price)
		@cookie = cookie
		@description =description
		@price = price
	end
end

class Muffin
	attr_accessor :muffin, :description, :price
	def intialize(muffin,description,price)
		@muffin = muffin
		@description =description
		@price = price
	end
end


#Cake objects
forest_cake = Cake.new("Forest Fruits","Made with the finest chocolates from beligum, topped with fresh berries and house made jam. Perfect for any occasion!","$35")
babka = Cake.new("Chocolate Babka", "Swirly, old world goodness. The perfect companion for coffee or tea.", "$12")

#Cookie objects
hamantaschen = Cookie.new()
choc_chip = Cookie.new()
multi = Cookie.new()
#muffin object
