class CreateTheses < ActiveRecord::Migration
  def change
    create_table :theses do |t|
      t.string :title
      t.string :author
      t.string :student_id
      t.string :course
      t.integer :year
      t.boolean :enabled
      t.references :lab
      t.foreign_key :labs, dependent: :delete
      t.references :teacher, null: false
      t.foreign_key :teachers, dependent: :delete
      t.references :faculty, null: false
      t.foreign_key :faculties, dependent: :delete

      t.timestamps
    end
    add_index :theses, :lab_id
    add_index :theses, :teacher_id
    add_index :theses, :faculty_id
  end
end
