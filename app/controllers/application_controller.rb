class ApplicationController < ActionController::Base
  before_action :set_profil, :set_works


  private


  def set_profil
    @profil = Profil.first
  end


  def set_works
    @works = Work.order(year: :desc)
  end

  def set_work
    @work = Work.find(params[:id])
  end

end
