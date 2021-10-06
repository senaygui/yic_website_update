class CreateAlmunis < ActiveRecord::Migration[5.2]
  def change
    create_table :almunis do |t|
      t.string :fullname, null: false
      t.string :sex, null: false
      t.string :phone_number, null: false
      t.string :modality
      t.string :study_level
      t.datetime :graduation_date
      t.string :prorgam
      t.timestamps
    end
  end
end
