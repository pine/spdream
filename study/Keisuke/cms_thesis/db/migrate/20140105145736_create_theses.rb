class CreateTheses < ActiveRecord::Migration
  def change
    create_table :theses do |t|
      t.string :title
      t.string :author
      t.string :student_id
      t.integer :year
      t.boolean :enabled
      t.references :lab, null: false
      t.foreign_key :labs, dependent :delete
      t.timestamps
    end
    add_index :theses, :lab_id
  end
end
