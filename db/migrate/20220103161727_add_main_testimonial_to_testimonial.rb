class AddMainTestimonialToTestimonial < ActiveRecord::Migration[5.2]
  def change
    add_column :visitor_comments, :main_testimonial, :boolean
  end
end
