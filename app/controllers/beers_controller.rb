class BeersController < ApplicationController

  def index
    @beers = Beer.all
  end

  def new
    @beers = Beer.new
  end

  def create
    @beer = Beer.new
    @beer.name      = params[:beer][:name]
    @beer.beer_type = params[:beer][:beer_type]
    @beer.abv       = params[:beer][:abv]
    @beer.ibu       = params[:beer][:ibu]
    @beer.image     = params[:beer][:image]
    @beer.save!
    redirect_to beers_path
  end

  def destroy
    @beer = Beer.find(params[:id])
    @beer.destroy
    redirect_to beers_path
  end

  def show
    @beer = Beer.find(params[:id])
  end

  def edit
    @beer = Beer.find(params[:id])
  end

  def update
    @beer = Beer.find(params[:id])
    @beer.name      = params[:beer][:name]
    @beer.beer_type = params[:beer][:beer_type]
    @beer.abv       = params[:beer][:abv]
    @beer.ibu       = params[:beer][:ibu]
    @beer.image     = params[:beer][:image]
    @beer.save!
    redirect_to beers_path
  end

end
