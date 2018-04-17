class Cake
	attr_accessor :cake, :description, :price
	def intialize(cake,description,price)
		@cake = cake
		@description =description
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
tea_cake = Cake.new()
babka = Cake.new()

#Cookie objects
hamantaschen = Cookie.new()
choc_chip = Cookie.new()
multi = Cookie.new()
#muffin object
