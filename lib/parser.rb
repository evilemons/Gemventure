#!/usr/bin/env ruby -wKU
#parser.rb

#Constants
Lookarry = %w[l look]
Movearry = %w[go move]

Totalarry = %w[l look go move examine take drop]

module Parser
	def parse(command)
		command.downcase!
		command.compact!
		command.delete 'the'

		if command == 'quit!' then; exit
		elsif command == 'quit' then
			puts 'Are you sure? '
			g = gets.chomp
			g.downcase!
			if g == "yes" then
				exit
			end
		else; cd1, cd2, cd3 = command.split(" ")
		end

		if cd1 == nil then
			return nil
		end

		if cd1 == 'pick' then
			if cd2 == 'up' then; cd1 = 'take'; cd2 = cd3; end
		end

		if cd1 == 'take' then
			return {:todo=>'take', :word=>cd2}
		end

		if cd2 == 'drop' then
			return {:todo=>'drop', :word=>cd2}
		end
		
		if Lookarry.include? cd1 then #user wants to look
			if cd2 == nil  then
				return {:todo=> 'look'}
			elsif cd2 == 'at'
				cd1 = 'examine'
				cd2 = cd3
			elsif cd2 == 'around'
				return {:todo=> 'look'}
			else
				puts "I'm sorry, I dont know what you mean by look #{cd2}"
			end
		end

		if Movearry.include? cd1 then
			return {:todo=>'move', :word=>cd2}
		end
		if cd1 == 'examine' then
			return {:todo=> 'examine', :word=>cd2}
		end

		if Totalarry.include? cd1 == false then
			return {:todo=> 'other', :word=>cd1}
		end
	end
end
