ActiveAdmin.register Profil do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  permit_params :about, :email, :pic_url, :cv_url

  form do |f|
    f.inputs 'Profile' do
      f.input :about
      f.input :email
      f.input :pic_url
      f.input :cv_url
    end
    f.actions
  end

  #
  # or
  #
  # permit_params do
  #   permitted = [:about, :email, :picture]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end

  filter :description

end
