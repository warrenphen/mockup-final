class CreateLessonCompletes < ActiveRecord::Migration
  def change
    create_table :lesson_completes do |t|
      t.integer :lesson_id
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
