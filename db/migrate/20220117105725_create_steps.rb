class CreateSteps < ActiveRecord::Migration[5.2]
  def change
    create_table :steps do |t|
      t.string :step_name
      t.string :step_description
      t.string :step_video_link
      t.references :how_to, foreign_key: true

      t.timestamps
    end
  end
end
