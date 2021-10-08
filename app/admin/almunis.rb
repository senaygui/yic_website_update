ActiveAdmin.register Almuni do
  permit_params :fullname,:sex,:phone_number,:modality,:study_level,:graduation_date,:program_name, documents: []
    active_admin_import
  index do
    selectable_column
    column :fullname
    column :modality
    column :study_level
    column :program_name
    # column "Graduation Date", sortable: true do |c|
    #   c.graduation_date.strftime("%b %d, %Y")
    # end
    column "Created At", sortable: true do |c|
      c.created_at.strftime("%b %d, %Y")
    end
    actions
  end

  form do |f|
    f.semantic_errors
    f.inputs "Almuni information" do
      f.input :fullname
      f.input :modality, as: :select, :collection => ["online", "regular", "extention", "distance"]
      f.input :study_level, as: :select, :collection => ["undergraduate", "graduate"]
      f.input :program_name
      f.input :sex, as: :select, :collection => ["Male", "Female"], :include_blank => false
      f.input :phone_number      
      f.input :graduation_date, as: :date_time_picker

    end
    f.inputs 'Dcouemnts', multipart: true do
      div class: "file-upload" do
        f.drag_and_drop_file_field :documents do
          'Drag and drop or click here to upload all the necessary documents!'
        end
        
      end
      if f.object.documents.attached?
        div class: "document-preview container" do
          f.object.documents.each do |document|
            if document.variable?
                div class: "preview-card" do
                  span image_tag(document, size: '200x200')
                  span link_to 'delete', delete_document_admin_almuni_path(document.id), method: :delete, data: { confirm: 'Are you sure?' }
                end
            elsif document.previewable?
                div class: "preview-card" do
                  span image_tag(document.preview(resize: '200x200'))
                  span link_to 'delete', delete_document_admin_almuni_path(document.id), method: :delete, data: { confirm: 'Are you sure?' }
                end
            end
          end
        end
      end
    end
    f.actions
  end

  member_action :delete_document, method: :delete do
    @pic = ActiveStorage::Attachment.find(params[:id])
    @pic.purge_later
    redirect_back(fallback_location: edit_admin_almuni_path)
  end

  show title: :fullname do
    panel "Almuni information" do
      attributes_table_for almuni do

        row :fullname
        row :modality
        row :study_level
        row :program_name
        row :sex
        row :phone_number      
        row :graduation_date
        row :created_at
        row :updated_at
        row "QR code" do |pt|
          span link_to(image_tag(pt.qr_code), rails_blob_path(pt.qr_code, disposition: 'attachment')) if almuni.qr_code.attached?
        end
        row "Bar code" do |pt|
          link_to(image_tag(pt.barcode), pt.barcode) if almuni.barcode.attached?
        end

        row "Documents" do |i|
          div class: "document-preview container" do
            i.documents.each do |doc| 
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
