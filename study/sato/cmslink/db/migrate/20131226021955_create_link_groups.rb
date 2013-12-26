class CreateLinkGroups < ActiveRecord::Migration
  def change
    create_table :link_groups do |t|
      t.string :title
      t.text :intro
      t.integer :priority

      t.timestamps
    end
  end
end
