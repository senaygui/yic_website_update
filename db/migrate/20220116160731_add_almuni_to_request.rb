class AddAlmuniToRequest < ActiveRecord::Migration[5.2]
  def change
    add_reference :requests, :almuni, foreign_key: true
  end
end
