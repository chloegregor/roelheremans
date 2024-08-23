class ProfilController < ApplicationController
  before_action :set_works

  def about
  end

  def cv
    @cv = @profil.cv
  end

  def contact
    @contacts = @profil.addresses

  end
end
