class CreateLunches < ActiveRecord::Migration
  def change
    create_table :lunches do |t|

      t.string :content
      t.string :date
      t.timestamps null: false
    end
  end
end
