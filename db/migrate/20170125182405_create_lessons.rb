class CreateLessons < ActiveRecord::Migration[5.0]
  def change
    create_table :lessons do |t|
      t.string :title
      t.references :author, foreign_key: true
      t.references :course, foreign_key: true
      t.string :status

      t.timestamps
    end
  end
end
