class CreateVisitorComments < ActiveRecord::Migration[5.2]
  def change
    create_table :visitor_comments do |t|
    	t.string :fullname, null: false
    	t.string :category, null: false
    	t.string :subject, null: false
    	t.text :message, null: false
    	t.string :email
    	t.string :phone_number
    	t.boolean :display_on_home_page, default: false
      t.timestamps
    end
  end
end
