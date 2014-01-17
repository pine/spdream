class AddDataToTheses < ActiveRecord::Migration
  def change
    add_column :theses, :data, :string
  end
end
