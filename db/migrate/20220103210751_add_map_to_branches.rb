class AddMapToBranches < ActiveRecord::Migration[5.2]
  def change
    add_column :branches, :map, :string
  end
end
