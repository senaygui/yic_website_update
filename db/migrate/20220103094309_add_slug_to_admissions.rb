class AddSlugToAdmissions < ActiveRecord::Migration[5.2]
  def change
    add_column :admissions, :slug, :string
    add_index :admissions, :slug, unique: true
  end
end
