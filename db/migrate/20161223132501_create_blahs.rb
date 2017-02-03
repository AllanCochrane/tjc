class CreateBlahs < ActiveRecord::Migration[5.0]
  def change
    create_table :blahs do |t|
      t.string :f
      t.integer :g

      t.timestamps
    end
  end
end
