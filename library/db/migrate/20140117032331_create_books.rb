class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :photo
      t.string :title
      t.string :auther
      t.string :outline
      t.string :isbn10, :default => '0'
      t.string :isbn13, :default => '0'
      t.string :opac_id
      t.integer :value
      t.references :category
      t.references :child_category
      t.boolean :deleted
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
