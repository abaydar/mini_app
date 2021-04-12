class ShowsController < ApplicationController
  before_action :get_show, except: [:index, :new, :create]

  def index
    @shows = Show.all
  end

  def new
    @show = Show.new
  end
  
  def create
    @show = Show.new(show_params)
    if @show.valid?
      @show.save
      redirect_to show_path(@show)
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @show.update(show_params)
      redirect_to show_path(@show)
    else
      render :edit
    end
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
