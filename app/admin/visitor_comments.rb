ActiveAdmin.register VisitorComment do
permit_params :fullname,:category,:subject,:message,:email,:phone_number,:display_on_home_page

menu label: "Comment"
  controller do
    def index
      params[:visitor_comment] = 'created_at_desc'
      super
    end
  end

  index do
    selectable_column
    column :fullname do |t|
      truncate(t.fullname, line_width: 9)
    end
    column :subject do |t|
      truncate(t.subject , line_width: 12)
    end  
    column :category do |s|
      status_tag s.category
    end  
    column 'Created At' do |c|
      c.created_at.strftime('%b %d, %Y')
    end
    actions
  end

  filter :fullname
  filter :category
  filter :subject
  filter :email
  filter :phone_number
  filter :created_at


  show title: :fullname do
    panel 'VisitorComment' do
      attributes_table_for visitor_comment do
        row :fullname 
        row :category do |c|
          status_tag c.category
        end
        row :subject
        row :email
        row :phone_number
        row :display_on_home_page
        row :created_at
        row :updated_at
      end  
      
    end
    active_admin_comments
  end
end
