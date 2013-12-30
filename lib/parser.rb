#!/usr/bin/env ruby -wKU
#parser.rb

#Constants
Lookarry = %w[l look]
Movearry = %w[go move]

class Parser
	public
	def parse(command)
		command.downcase!
		if command == 'quit' then
			exit
		else
			cd1, cd2, cd3 = command.split(" ")
		end

		if cd1 == nil then
			return nil
		end
		
		if Lookarry.include? cd1 then #user wants to look
			if cd2 == nil  then
				return {:todo=> look}
			elsif cd2 == 'at'
				cd1 = 'examine'
				cd2 = cd3
			elsif cd2 == 'around'
				return {:todo=> look}
			else
				puts "I'm sorry, I dont know what you mean by look #{cd2}"
			end
		end

		if Movearry.include? cd1 then
			return {:todo=>"move", :word=>cd2}
		end
		if cd1 == 'examine' then
			command.delete "the"

			return {:todo=> "examine", :word=>cd2}
		end
	end
end