class ShortenersController < ApplicationController
  def index
    @shortener = Shortener.new
  end

  def create
    @shortener = Shortener.new(shortener_params)

    if @shortener.save
      redirect_to shorteners_path(@shortener)
    else
      render :new
    end
  end

  def new
  end

  def show
    binding.pry
    @shortener = Shortener.find(params[:format])
  end

  private

  def shortener_params
    params.require(:shortener).permit(:link)
  end
end
