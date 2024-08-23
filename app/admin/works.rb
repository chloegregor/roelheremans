ActiveAdmin.register Work do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  permit_params :title, :description, :year,
                photos_attributes: [:id, :url, :legend, :cover, :_destroy],
                videos_attributes: [:id, :url, :cover, :_destroy]


  form do |f|
    f.inputs 'Work' do
      f.input :title
      f.input :description
      f.input :year
    end
    f.inputs 'Photos' do
      f.has_many :photos, heading: false, allow_destroy: true do |photo|
        photo.input :url
        photo.input :legend
        photo.input :cover, as: :boolean
      end
    end
    f.inputs 'Videos' do
      f.has_many :videos, heading: false, allow_destroy: true do |video|
        video.input :url
        video.input :cover, as: :boolean
      end
    end
    f.actions
  end


  #
  # or
  #
  # permit_params do
  #   permitted = [:title, :description, :year]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end

  filter :title
  filter :year

end
