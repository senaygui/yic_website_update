class CreateRequests < ActiveRecord::Migration[5.2]
  def change
    create_table :requests do |t|
      t.string :name_of_organization
      t.string :email
      t.string :phone_number
      t.string :student_fullname
      t.boolean :approve

      t.timestamps
    end
  end
end
