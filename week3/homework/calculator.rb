#Build a calculator module

class Calculator


# Adds all integers in an array
	def sum(num)
	  list = Array.new(num)
	  list.reduce(0, :+)
	end  

# Multiplies all integers in an array
	def multiply(*num)
	  
	  num.flatten.inject(1, :*)
	end

# Ups something to a power
	def pow base, exponent
	  base ** exponent
	end

# Gets the factorial (product of all numbers up to target number)
	def fac(num)
	  1.upto(num).inject(:*)
	end  

end