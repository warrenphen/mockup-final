class CreateSteps < ActiveRecord::Migration
  def change
    create_table :steps do |t|
      t.integer :lesson_id
      t.integer :user_id
      t.boolean :completed

      t.timestamps null: false
    end
  end
end
