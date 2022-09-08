ActiveAdmin.register Category do

  permit_params :name, doctor_ids: []

  index do
    selectable_column
    id_column
    column :name
    column :doctor_ids
    actions
  end

  show do |t|
    attributes_table do
      row :name
      row :doctor_ids
      row :updated_at
    end
  end

  form do |f|
    f.inputs do
      f.input :name
      f.input :doctors, as: :select, multiple: true, collection: Doctor.all.collect {|product| [product.first_name, product.id]}
    end
    f.actions
  end
end
