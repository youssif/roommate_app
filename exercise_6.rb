# Create a Roommate class that keeps track of how much beer you drank
# Use an attribute beer_count
# create a method drink_beer which will print yumm and add to the beer count
# Remember to test out every method that you create

class Roommate
	@@total_beer_count = 0
	@@alcoholics = []

	def self.total_drank
		puts "#{@@total_beer_count} beers have been drunk."
	end

	def self.drank_most
		@@alcoholics.sort do |b,a|
			a.individual_beer <=> b.individual_beer
		end.first.name
		
	end

	def drank
		@individual_beer
	end

	attr_accessor :individual_beer, :drinker_number, :name

	def initialize
		@individual_beer = 0
		@drinker_number = @@alcoholics.length
		@@alcoholics << self
		
	end

	def drink_beer(beer_number)
		@individual_beer += beer_number
		@@total_beer_count += beer_number
		puts "Yummmm I just drank #{@individual_beer} beers!"
	end


end