class WorksController < ApplicationController

  def index
    @works = Work.order(year: :desc)

  end

  def show
    @works = Work.order(year: :desc)
    @work = Work.friendly.find(params[:id])
    # render 'works/show'

  end
end
