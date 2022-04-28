ActiveAdmin.register Request do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
   permit_params :name_of_organization, :email, :phone_number, :student_fullname, :approve, :tempo, :almuni_id
  #
  # or
  #
  # permit_params do
  #   permitted = [:name_of_organization, :email, :phone_number, :student_fullname, :approve]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end

  form do |f|
    f.semantic_errors
    f.inputs "Request Information", :multipart => true do
      almuni = Almuni.all
      f.input :name_of_organization
      f.input :student_fullname
      f.input :email
      f.input :approve
      f.input :almuni_id, :as=> :select, :collection => almuni.collect { |prod| [prod.student_id, prod.id]}
      f.input :phone_number
      f.input :tempo, as: :file
    end
    f.actions
end


  show title: :name_of_organization do
    panel 'Request' do
      attributes_table_for request do
        row :name_of_organization 
        row :email
        row :phone_number
        row :student_fullname
        row :approve
        row :created_at
        row :updated_at
        row "tempo" do |pt|
          span image_tag(pt.tempo, size: '300x300', class: "img-corner")
        end
      end  
      
    end
    active_admin_comments
  end
  
end
