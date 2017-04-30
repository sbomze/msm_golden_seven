class DirectorsController < ApplicationController

  def index
    @directors = Director.all
    render("directors/index.html.erb")
  end

  def show
    @director = Director.find(params[:id])
    render("/directors/show.html.erb")
  end

  def destroy
    @director = Director.find(params[:id])
    @director.destroy
    redirect_to("/directors")
  end
  
end
