class AddSlugToPrograms < ActiveRecord::Migration[5.2]
  def change
    add_column :programs, :slug, :string
    add_index :programs, :slug, unique: true
  end
end
