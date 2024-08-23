class WorkController < ApplicationController

  def index
    @works = Work.order(year: :desc)

  end

  def show
    @works = Work.order(year: :desc)
    @work = Work.find(params[:id])
  end



end
