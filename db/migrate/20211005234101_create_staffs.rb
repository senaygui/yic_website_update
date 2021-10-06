class CreateStaffs < ActiveRecord::Migration[5.2]
  def change
    create_table :staffs do |t|
      t.string :fullname, null: false
      t.string :message
      t.string :job_title, null: false
      t.string :office_name
      t.text :major_responsibilities
      t.text :offices_that_answerable_to
      t.string :office_address
      t.string :office_phone_number
      t.string :email
      t.timestamps
    end
  end
end
