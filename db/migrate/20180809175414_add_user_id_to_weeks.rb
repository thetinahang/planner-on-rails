class AddUserIdToWeeks < ActiveRecord::Migration[5.1]
  def change
    add_column :weeks, :user_id, :integer
  end
end
