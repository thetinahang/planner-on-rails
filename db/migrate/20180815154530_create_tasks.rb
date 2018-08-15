class CreateTasks < ActiveRecord::Migration[5.1]
  def change
    create_table :tasks do |t|
    	t.string :task_content
    	t.belongs_to :day
      	t.belongs_to :hour
      	t.timestamps null: false
    end
  end
end
