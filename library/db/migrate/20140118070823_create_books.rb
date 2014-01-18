class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :photo
      t.string :title
      t.string :auther
      t.text :outline
      t.string :isbn10, :default => '0'
      t.string :isbn13, :default => '0'
      t.string :opac_id
      t.integer :value
      t.references :category
      t.references :child_category
      t.boolean :deleted
      t.string :tag0
      t.string :tag1
      t.string :tag2
      t.string :tag3
      t.string :tag4
      t.string :tag5
      t.string :tag6
      t.string :tag7
      t.foreign_key :category
      t.foreign_key :child_category
      t.string :photo_file_name
      t.integer :photo_file_size
      t.string :photo_content_type
      t.datetime :photo_updated_at

      t.timestamps
    end
    add_index :books, :category_id
    add_index :books, :child_category_id
  end

  def self.down
    drop
    table :books
  end
end