ActiveAdmin.register Accreditation do
  permit_params :accreditation_title,:modality,:study_level,:program_id, accreditation_documents: []
  index do
    selectable_column
    column :accreditation_title
    column :modality
    column :study_level
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
      f.input :accreditation_title
      f.input :modality, as: :select, :collection => ["online", "regular", "extention", "distance"]
      f.input :study_level, as: :select, :collection => ["undergraduate", "graduate"]
      f.input :program_id, as: :search_select, url: admin_programs_path,
          fields: [:program_name, :id], display_name: 'program_name', minimum_input_length: 2,
          order_by: 'id_asc'
    end
    f.inputs 'Dcouemnts', multipart: true do
      div class: "file-upload" do
        f.drag_and_drop_file_field :accreditation_documents do
          'Drag and drop or click here to upload all the necessary accreditation documents!'
        end
        
      end
      if f.object.accreditation_documents.attached?
        div class: "document-preview container" do
          f.object.accreditation_documents.each do |document|
            if document.variable?
                div class: "preview-card" do
                  span image_tag(document, size: '200x200')
                  span link_to 'delete', delete_accreditation_document_admin_accreditation_path(document.id), method: :delete, data: { confirm: 'Are you sure?' }
                end
            elsif document.previewable?
                div class: "preview-card" do
                  span image_tag(document.preview(resize: '200x200'))
                  span link_to 'delete', delete_accreditation_document_admin_accreditation_path(document.id), method: :delete, data: { confirm: 'Are you sure?' }
                end
            end
          end
        end
      end
    end
    f.actions
  end

  member_action :delete_accreditation_document, method: :delete do
    @pic = ActiveStorage::Attachment.find(params[:id])
    @pic.purge_later
    redirect_back(fallback_location: edit_admin_accreditation_path)
  end

  show title: :accreditation_title do
    panel "Accreditation information" do
      attributes_table_for accreditation do

        row :accreditation_title
        row :modality
        row :study_level
        row "program" do |pr|
		    	pr.program.program_name
		    end
        row :created_at
        row :updated_at
        row "Documents" do |i|
          div class: "document-preview container" do
            i.accreditation_documents.each do |doc| 
              if doc.variable?
                div class: "preview-card" do
                  span link_to image_tag(doc, size: '200x200'), doc
                end
              elsif doc.previewable?
                div class: "preview-card" do
                  span link_to image_tag(doc.preview(resize: '200x200')), doc
                end
              end
            end
          end
        end
      end
    end
  end
  
end
