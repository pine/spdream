class AddFullTextToTheses < ActiveRecord::Migration
  def change
    add_column :theses, :full_text, :boolean
  end
end
