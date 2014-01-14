class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.string :opac_id
      t.string :category_id
      t.integer :value_book
      t.string :title
      t.text :comment

      t.timestamps
    end
  end
end
