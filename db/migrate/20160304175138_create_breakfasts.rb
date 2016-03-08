class CreateBreakfasts < ActiveRecord::Migration
  def change
    create_table :breakfasts do |t|

      t.string :content
      t.timestamps null: false
    end
  end
end
