class CreateAccreditations < ActiveRecord::Migration[5.2]
  def change
    create_table :accreditations do |t|
      t.string :accreditation_title, null: false
      t.string :modality, null: false
      t.string :study_level, null: false
      t.belongs_to :program, index: true
      t.timestamps
    end
  end
end
