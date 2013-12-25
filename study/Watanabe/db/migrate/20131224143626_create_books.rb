class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :title
      t.text :outline
      t.integer :isbn10
      t.integer :isbn13
      t.integer :materialid
      t.integer :value

      t.timestamps
    end
  end
end
