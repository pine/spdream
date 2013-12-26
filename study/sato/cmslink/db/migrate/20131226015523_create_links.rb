class CreateLinks < ActiveRecord::Migration
  def change
    create_table :links do |t|
      t.string :title
      t.string :url
      t.text :intro
      t.integer :priority
      t.references :link_group_id

      t.timestamps
    end
    add_index :links, :link_group_id_id
  end
end
