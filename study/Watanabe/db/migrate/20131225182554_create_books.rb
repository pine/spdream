class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :title
      t.string :isbn10
      t.string :isbn13
      t.string :opac_id
      t.integer :value

      t.timestamps
    end
  end
end
