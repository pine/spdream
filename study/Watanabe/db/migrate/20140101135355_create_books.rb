class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :title
      t.string :auther
      t.text :outline
      t.string :isbn
      t.string :opac_id
      t.integer :value

      t.timestamps
    end
  end
end
