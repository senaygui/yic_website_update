class CreateSectionHeadlines < ActiveRecord::Migration[5.2]
  def change
    create_table :section_headlines do |t|
      t.belongs_to :college, index: true
      t.string :gallery_headline
      t.string :service_headline
      t.string :accreditation
      t.string :testimonial_headline
      t.string :home_page_video_embed
      t.string :home_page_carousel_headline
      t.string :home_page_carousel_description

      t.timestamps
    end
  end
end
