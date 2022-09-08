ActiveAdmin.register Doctor do
  permit_params :first_name, :last_name, :phone_number, :email, :password, :password_confirmation, :category_id

  form do |f|
    f.inputs do
      f.input :first_name
      f.input :last_name
      f.input :email
      f.input :phone_number
      f.input :password
      f.input :password_confirmation
      f.input :category_id, as: :select, collection: Category.all.collect {|product| [product.name, product.id]}
    end
    f.actions
  end

  index do
    selectable_column
    id_column
    column :first_name
    column :last_name
    column :sign_in_count
    column :email
    column :phone_number
    column :password
    column :password_confirmation
    column :category_id
    actions
  end
end
