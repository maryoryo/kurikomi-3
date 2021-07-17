class Admin::GenresController < ApplicationController
  
  before_action :authenticate_admin!
  
  def index
    @genres = Genre.all
    @genre = Genre.new
  end
  
  def show
    @genre = Genre.find(params[:id])
  end
  
  def create
    @genre = Genre.new(genre_params)
    if @genre.save
      redirect_to admin_genres_path
    else
      render 'new'
    end
  end

  def edit
    
  end
  
  def update
    
  end
  
  def destroy
    
  end
  
  
  private
  
  def genre_params
    params.require(:genre).permit(:name)
  end
  
end
