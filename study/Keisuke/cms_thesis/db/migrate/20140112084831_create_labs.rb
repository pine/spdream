class CreateLabs < ActiveRecord::Migration
  def change
    create_table :labs do |t|
      t.string :name
      t.references :faculty

      t.timestamps
    end
    add_index :labs, :faculty_id
  end
end