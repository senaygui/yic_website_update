class AddSlugToAlmunis < ActiveRecord::Migration[5.2]
  def change
    add_column :almunis, :slug, :string
    add_index :almunis, :slug, unique: true
  end
end
