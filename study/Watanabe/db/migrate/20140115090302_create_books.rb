class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :title
      t.string :auther
      t.text :outline
      t.string :isbn10, :default => '0'
      t.string :isbn13, :default => '0'
      t.string :opac_id
      t.integer :value
      t.references :category
      t.references :child_category
      t.references :tag
      t.foreign_key :category
      t.foreign_key :child_category
      t.foreign_key :tag

      t.timestamps
    end
    add_index :books, :category_id
    add_index :books, :child_category_id
    add_index :books, :tag_id
  end
end