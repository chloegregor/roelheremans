class ApplicationController < ActionController::Base
  before_action :set_profil
  # before_action :set_works


def set_work
  @work = Work.friendly.find(params[:id])
  render 'work/show'
end

private


def set_profil
  @profil = Profil.first
end


def set_works
  @works = Work.order(year: :desc)
end

def newsletter
end

end
