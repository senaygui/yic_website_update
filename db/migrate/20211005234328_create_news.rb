class CreateNews < ActiveRecord::Migration[5.2]
  def change
    create_table :news do |t|
      t.string :news_title, null: false
      t.string :overview, null: false
      t.text :body
      t.boolean :publish, default: false
      t.string :published_by
      t.timestamps
    end
  end
end
