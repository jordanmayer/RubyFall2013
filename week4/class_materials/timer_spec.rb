require "#{File.dirname(__FILE__)}/timer"

describe Timer do

	it "should report the time difference" do
		Time.stub(:now).and_return(0,3) # fakes times so we dont have to actually wait
		time_difference = Timer.time_code do
		end
		time_difference.should be_within(0.1).of(3.0)
	end

	it "should run our code" do
		flag = false        # nothing runs so comes back false
		Timer.time_code do  # run some code
			flag = true     # now it should return something
		end
		flag.should be_true
	end

	it "should run our code multiple times" do
		counter = 0
		result = Timer.time_code(17) {counter += 1}
		counter.should equal 17
	end

	it "should give the average time" do
		Time.stub(:now).and_return(0,10)
		result = Timer.time_code(10) { }
		result.should be_within(0.1).of(1)
	end

end
