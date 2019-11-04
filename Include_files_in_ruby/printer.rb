def print_data(param)
	if param.instance_of?(String)
		then puts "Hello there " + param
	elsif param.instance_of?(Integer)
		then puts "Your year of birth is:"+ param.to_s
	else
		puts "Wrong data!"
	end
end

