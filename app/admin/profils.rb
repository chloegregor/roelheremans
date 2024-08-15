ActiveAdmin.register Profil do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  permit_params :about, :pic_url, :cv_url,
                addresses_attributes: %w[id title street zip_code city country phone_number email website destroy]

  form do |f|
    f.inputs 'Profile' do
      f.input :about
      f.input :pic_url
      f.input :cv_url
    end
    f.inputs 'Address' do
      f.has_many :addresses, heading: false, allow_destroy: true do |address|
        address.input :title
        address.input :street
        address.input :zip_code
        address.input :city
        address.input :country, as: :string
        address.input :phone_number
        address.input :email
        address.input :website
      end
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
