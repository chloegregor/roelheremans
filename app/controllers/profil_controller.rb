class ProfilController < ApplicationController

  def about
  end

  def cv
    @cv = @profil.cv
  end

  def contact
    @contacts = @profil.addresses

  end
end
