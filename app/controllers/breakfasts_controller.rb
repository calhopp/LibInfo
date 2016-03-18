class BreakfastsController < ApplicationController
	def new
		@breakfast = Breakfast.new
	end
end
