ActiveAdmin.register Profil do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  permit_params :about, :pic_url,
                addresses_attributes: %w[id title street zip_code city country phone_number email website destroy],
                cv_attributes: %w[id exhibitions personalia education grant_and_prizes residencies permanent_installations hosting teaching membership scientific destroy]


  form do |f|
    f.inputs 'Profile' do
      f.input :about
      f.input :pic_url
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
    f.inputs 'CV' do
      f.semantic_fields_for :cv, f.object.cv || Cv.new do |cv|
        cv.input :exhibitions
        cv.input :personalia
        cv.input :education
        cv.input :grant_and_prizes
        cv.input :residencies
        cv.input :permanent_installations
        cv.input :hosting
        cv.input :teaching
        cv.input :membership
        cv.input :scientific
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
