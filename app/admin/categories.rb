ActiveAdmin.register Category do

  permit_params :name, :image, doctor_ids: []

  index do
    selectable_column
    id_column
    column :name
    column :doctor_ids
    column :image do |m|
      image_tag m.image.url if m.image.present?
    end
    actions
  end

  show do |t|
    attributes_table do
      row :name
      row :doctor_ids
      row :updated_at
      row :image do |ad|
        image_tag ad.image.url if ad.image.present?
      end
    end
  end

  form do |f|
    f.inputs do
      f.input :name
      f.input :doctors, as: :select, multiple: true, collection: Doctor.all.collect {|product| [product.first_name, product.id]}
      f.input :image, as: :file
    end
    f.actions
  end
end
