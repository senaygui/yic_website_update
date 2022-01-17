class AddStudentIdToAlmuni < ActiveRecord::Migration[5.2]
  def change
    add_column :almunis, :student_id, :string
  end
end
