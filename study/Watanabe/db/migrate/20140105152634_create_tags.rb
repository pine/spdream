class CreateTags < ActiveRecord::Migration
  def change
    create_table :tags do |t|
      t.string :name
      t.text :intro
      t.integer :priority
      t.boolean :enabled

      t.timestamps
    end
  end
end
