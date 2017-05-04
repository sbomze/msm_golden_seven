class DirectorsController < ApplicationController

  def index
    @directors = Director.all
    render("directors/index.html.erb")
  end

  def show
    @director = Director.find(params[:id])
    render("/directors/show.html.erb")
  end

  def new_form
    render("/directors/new_form.html.erb")
  end

  def create_row
    @director = Director.new
    @director.name = params[:name]
    @director.bio = params[:bio]
    @director.dob = params[:dob]
    @director.image_url = params[:image_url]
    @director.save
    redirect_to("/directors")
  end

  def edit_form
    @director = Director.find(params[:id])
    render("/directors/edit_form.html.erb")
  end

  def update_row
    @director = Director.find(params[:id])
    @director.name = params[:name]
    @director.bio = params[:bio]
    @director.dob = params[:dob]
    @director.image_url = params[:image_url]
    @director.save
    redirect_to("/directors/#{@director.id}")
  end

  def destroy
    @director = Director.find(params[:id])
    @director.destroy
    redirect_to("/directors")
  end

end
