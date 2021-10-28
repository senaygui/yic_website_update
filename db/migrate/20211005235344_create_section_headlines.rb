class CreateSectionHeadlines < ActiveRecord::Migration[5.2]
  def change
    create_table :section_headlines do |t|
      t.belongs_to :college, index: true
      t.string :gallery_headline
      t.string :service_headline
      t.string :accreditation
      t.string :testimonial_headline
      t.string :home_page_video_embed, default: "https://www.youtube.com/embed/Sxuk-tbnNtE"
      t.string :home_page_carousel_headline, default: "YIC Started online masters Registration"
      t.string :home_page_carousel_description, default: "Lorem ipsum dolor sit amet, consectetur adipisicing elit."
      t.string :primary_cta_action, default: "#"
      t.string :secondary_cta_action, default: "about_path"
      t.timestamps
    end
  end
end
