#!/usr/bin/env ruby -wKU
#world.rb

class World
	attr :score

	def +(amount)
		@score += amount
	end

	def -(amount)
		@score += amount
	end
end