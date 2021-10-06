class CreateCareerOpportunities < ActiveRecord::Migration[5.2]
  def change
    create_table :career_opportunities do |t|
      t.belongs_to :program, index: true
      t.string :title, null: false
      t.timestamps
    end
  end
end
