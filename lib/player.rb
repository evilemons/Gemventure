#!/usr/bin/env ruby -wKU
#player.rb
require_relative "inventory.rb"
require_relative "world.rb"

class Player
	attr :health

	public
	def damage_by(amount); health -= amount; end
	def heel_by(amount); helth += amount; end
	def kill; iputs "You died with a total score of #{World.score}" ;end
end
