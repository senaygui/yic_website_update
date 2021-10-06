class CreateColleges < ActiveRecord::Migration[5.2]
  def change
    create_table :colleges do |t|
    	## collage basic information
    	t.string :college_name, null: false
    	t.text :background
    	t.text :mission, null: false
    	t.text :vision, null: false
    	t.text :overview, null: false
    	t.datetime :establishment_date, null: false
    	t.integer :student_enrolled, null: false
    	t.integer :distance_center, null: false
    	t.integer :number_of_prorgam, null: false
    	t.text :mandate, null: false
    	t.text :history, null: false

    	## collage address
    	t.string :headquarter_address, null: false
    	t.string :alternative_address
      t.string :sub_city
      t.string :state
      t.string :region
      t.string :zone
      t.string :worda
    	t.string :city
    	t.string :country
    	t.string :phone_number, null: false
      t.string :alternative_phone_number, null: false
    	t.string :email, null: false
    	t.string :facebook_handle
    	t.string :twitter_handle
    	t.string :instagram_handle
      t.string :linkedin_handle
    	t.string :map_embed

    	##created and updated by
    	t.string :created_by
    	t.string :last_updated_by
      t.timestamps
    end
  end
end
