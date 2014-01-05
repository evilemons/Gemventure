#!/usr/bin/env ruby -wKU
require_relative "lib/gemventure.rb"

letter = Item.new :description=>'It seems it is a letter. There is an un-broken seal.', :actions=>%w[open], :name=>'letter'
Inventory.addItemtou letter
initialRoom = Room.new :description=>'You are in a emty room. There is nothing here except a letter at your feet.', :items=>[letter]

loop do
	Interaction.new initialRoom
end
