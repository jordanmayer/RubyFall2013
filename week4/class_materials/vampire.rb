require './monster.rb'
class Vampire < Monster
	def initialize(noc=true, legs=2, name ="Vampire", vul=[:garlic, :sunlight], dangers=[:bites])
		super(noc,legs,name,vul,dangers) #send this up to override defaults in monster
	end
end
