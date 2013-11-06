module Worker

  def self.work(n = 1) 	
  	result = 0
  	n.times {result = yield}
  	result
  end

end

