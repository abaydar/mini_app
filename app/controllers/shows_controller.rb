class ShowsController < ApplicationController
  before_action :get_show, except: [:index, :new, :create]

  def index
    @shows = Show.all
  end

  def new
    @show = Show.new
  end
  
  def create

  end

  def edit
  end

  def update
  end

  def show
  end

  def destroy
  end

private

def get_show
  @show = Show.find_by_id(params[:id])
end

def show_params
  params.require(:show).permit(:name, :genre, :status, :premiered, :image)
end

end
