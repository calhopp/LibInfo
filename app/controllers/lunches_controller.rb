class LunchesController < ApplicationController
	def new
		@lunch = Lunch.new
	end
end
