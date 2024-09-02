class ProfilController < ApplicationController
  before_action :set_works

  def about
  end

  def cv
    @cv_categories = @profil.cv_categories
  end

  def contact
    @contacts = @profil.addresses

  end
end
