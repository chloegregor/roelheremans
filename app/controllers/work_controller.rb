class WorkController < ApplicationController

  def index
    @works = Work.order(year: :desc)

  end

  def show
    @works = Work.order(year: :desc)
    @work = Work.friendly.find(params[:id])
    render 'work/show'
  end



end
