require './named_thing.rb'
class Monster
	include NamedThing
	attr_accessor :vulnerabilities, :dangers
    attr_reader :nocturnal, :legs
	
	def initialize(noc, legs, name="Monster", vul = [], dangers = [])
		super(name) #module lives above this, so tell is to go 'look' for it via super.
		#The initialize in Monster overrides the init in NamedThings,
		# so need to super to get it. Goes up a level of inheritance (I think)
		@nocturnal = noc
		@vlunerabilities = vul
		@dangers = dangers
		@legs = legs
	end
end	
