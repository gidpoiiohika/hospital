ActiveAdmin.register Patient do
  permit_params :first_name, :last_name, :phone_number, :email, :password, :password_confirmation

  form do |f|
    f.inputs do
      f.input :first_name
      f.input :last_name
      f.input :email
      f.input :phone_number
      f.input :password
      f.input :password_confirmation
    end
    f.actions
  end
end
