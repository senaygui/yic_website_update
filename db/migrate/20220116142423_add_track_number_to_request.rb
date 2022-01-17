class AddTrackNumberToRequest < ActiveRecord::Migration[5.2]
  def change
    add_column :requests, :track_number, :integer
  end
end
