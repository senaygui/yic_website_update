class CreateMarketingSections < ActiveRecord::Migration[5.2]
  def change
    create_table :marketing_sections do |t|
      t.string :headline_title
      t.string :description
      t.string :page_to_display
      t.string :action

      t.timestamps
    end
  end
end
