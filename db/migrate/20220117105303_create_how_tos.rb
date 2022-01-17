class CreateHowTos < ActiveRecord::Migration[5.2]
  def change
    create_table :how_tos do |t|
      t.string :title
      t.string :description
      t.string :video_link

      t.timestamps
    end
  end
end
