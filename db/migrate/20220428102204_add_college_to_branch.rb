class AddCollegeToBranch < ActiveRecord::Migration[5.2]
  def change
  	remove_column :branches, :program_id
  	add_reference :branches, :college, foreign_key: true
  end
end
