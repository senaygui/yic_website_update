class CreateServices < ActiveRecord::Migration[5.2]
  def change
    create_table :services do |t|
      t.string :service_name, null: false
      t.string :service_overview, null: false
      t.text :details, null: false

      t.timestamps
    end
  end
end
