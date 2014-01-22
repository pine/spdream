class CreateTags < ActiveRecord::Migration
  def change
    create_table :tags do |t|
      t.string :name
      t.text :intro
      t.integer :priority, :default => '1'
      t.boolean :enabled, :default => false
      t.boolean :request, :default => false

      t.timestamps
    end
  end
end
