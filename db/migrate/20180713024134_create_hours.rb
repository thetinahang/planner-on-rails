class CreateHours < ActiveRecord::Migration[5.1]
  def change
    create_table :hours do |t|
    	t.integer :hour_number
    end
  end
end
