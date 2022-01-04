ActiveAdmin.register CareerOpportunity do

    # See permitted parameters documentation:
    # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
    
    # Uncomment all parameters which should be permitted for assignment
    
    permit_params :title,:program_id, :action

    index do
      selectable_column
    
      column "program" do |pr|
        pr.program.program_name
      end
      column "Created At", sortable: true do |c|
        c.created_at.strftime("%b %d, %Y")
      end
      actions
    end
  
    form do |f|
      f.semantic_errors
      f.inputs "Accreditation information" do
        f.input :title
        f.input :program_id, as: :search_select, url: admin_programs_path,
            fields: [:program_name, :id], display_name: 'program_name', minimum_input_length: 2,
            order_by: 'id_asc'
         end
      f.actions
    end
  
    
    # # or
    
    # permit_params do
    #   permitted = [:headline_title, :description, :page_to_display, :action]
    #   permitted << :other if params[:action] == 'create' && current_user.admin?
    #   permitted
    # end
    
  end
  