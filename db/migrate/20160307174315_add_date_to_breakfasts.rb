class AddDateToBreakfasts < ActiveRecord::Migration
  def change
  	add_column :breakfasts, :date, :string
  end
end
