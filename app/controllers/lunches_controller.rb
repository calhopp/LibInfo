class LunchesController < ApplicationController
	def new
		@lunch = Lunch.new
	end

	def create
		@lunch = Lunch.new(lunch_params)
		if @lunch.save
			redirect_to new_lunch_path
		end
	end

	private

	def lunch_params
		params.require(:lunch).permit(:content, :date)
	end
end
