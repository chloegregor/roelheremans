class ProfilController < ApplicationController
  def show
    @profil = Profil.first
  end
end
