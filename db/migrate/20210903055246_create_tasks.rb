class CreateTasks < ActiveRecord::Migration[6.1]
  def change
    create_table :tasks do |t|
      t.string :title
      t.string :description
      t.datetime :start_time
      t.datetime :end_time
      t.string :state
      t.integer :user_id
      t.timestamps
    end
  end
end
