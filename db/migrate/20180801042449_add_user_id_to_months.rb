class AddUserIdToMonths < ActiveRecord::Migration[5.1]
  def change
    add_column :months, :user_id, :integer
  end
end
