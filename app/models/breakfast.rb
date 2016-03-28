class Breakfast < ActiveRecord::Base
	validates :content, presence: true
	validates :date, presence: true
end
