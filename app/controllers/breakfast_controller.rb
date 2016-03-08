class BreakfastController < ApplicationController
	def show
	end

	def new
		@breakfast = Breakfast.new
	end

	def show
		@today = Breakfast.where(:date == Date.today)
		@tomorrow = Breakfast.where(:date == Date.tomorrow)
	end
end
