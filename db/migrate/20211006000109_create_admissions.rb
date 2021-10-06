class CreateAdmissions < ActiveRecord::Migration[5.2]
  def change
    create_table :admissions do |t|
      t.string :admission_name, null: false
      t.text :how_to_apply, null: false
      t.text :required_document, null: false
      t.text :payment_process, null: false
      t.text :useful_information
      t.string :study_level, null: false
      t.string :modality, null: false
      t.timestamps
    end
  end
end
