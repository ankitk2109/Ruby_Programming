#Week3

require_relative 'printer'
require_relative 'err'

def eligible_for_license(yob)
	age = 2019 - yob
	if age>=18
		puts "You are eligible to have a driving license."
	else
		error_print
	end
end

def details
	puts "What is your full name?:"
	cand_name = gets.chomp
	print_data(cand_name)

	puts "What is year of birth:"
	yob = gets.chomp.to_i
	print_data(yob)

	eligible_for_license(yob)
end

details