class CreateHabits < ActiveRecord::Migration[5.1]
  def change
    create_table :habits do |t|
      t.integer :type_id, index: true
      t.string :description
      t.integer :weekly_goal
      t.boolean :reminder
      t.timestamps
    end
  end
end
