class AddFileToTheses < ActiveRecord::Migration
  def change
    add_column :theses, :file, :stringio
  end
end
