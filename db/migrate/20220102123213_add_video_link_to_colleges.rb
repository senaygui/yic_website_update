class AddVideoLinkToColleges < ActiveRecord::Migration[5.2]
  def change
    add_column :colleges, :video_link, :string
  end
end
