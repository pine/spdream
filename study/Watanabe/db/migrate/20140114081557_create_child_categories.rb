class CreateChildCategories < ActiveRecord::Migration
  def change
    create_table :child_categories do |t|
      t.string :name
      t.text :description
      t.integer :priority
      t.references :category
      t.foreign_key :category, dependent: :delete
      t.timestamps
    end
    add_index :child_categories, :category_id
  end
end
