class CreateLessonSteps < ActiveRecord::Migration[5.0]
  def change
    create_table :lesson_steps do |t|
      t.references :lesson, foreign_key: true
      t.string :text
      t.string :media_type
      t.string :file_path
      t.string :description

      t.timestamps
    end
  end
end
