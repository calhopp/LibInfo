class BreakfastsController < ApplicationController
	def show
	end

	def new
		@breakfast = Breakfast.new
	end

	def show
		@today = Breakfast.where(:date == Date.today)
		@tomorrow = Breakfast.where(:date == Date.tomorrow)
	end

	def create
		@breakfast = Breakfast.new(breakfast_params)
		if @breakfast.save
			redirect_to new_breakfast_path
		end
	end

	private

	def breakfast_params
		params.require(:breakfast).permit(:content, :date)
	end
end
