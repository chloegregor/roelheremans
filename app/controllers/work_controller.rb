class WorkController < ApplicationController
  def index
    @works = Work.all
  end

  def show
    @works = Work.all
    @work = Work.find(params[:id])
  end

end
