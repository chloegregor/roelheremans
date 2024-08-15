class WorkController < ApplicationController
  before_action :set_profil, only: [:index, :show]
  def index
    @works = Work.order(year: :desc)

  end

  def show
    @works = Work.order(year: :desc)
    @work = Work.find(params[:id])
  end

  private

  def set_profil
    @profil = Profil.first
  end

end
