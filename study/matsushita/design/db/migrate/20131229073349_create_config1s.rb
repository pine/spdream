class CreateConfig1s < ActiveRecord::Migration
  def change
    create_table :config1s do |t|
      t.integer :field1
      t.string :field2
      t.text :field3

      t.timestamps
    end
  end
end
