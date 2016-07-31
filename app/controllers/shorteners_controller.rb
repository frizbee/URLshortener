class ShortenersController < ApplicationController
  def index
    @shortener = Shortener.new
  end

  def create
    @shortener = Shortener.new(shortener_params)

    if @shortener.save
      redirect_to shorteners_path(@shortener)
    else
      render :index
    end
  end

  def new
  end

  def show
    url = Shortener.find_by(code: params[:id])
    redirect_to url.link
  end

  private

  def shortener_params
    params.require(:shortener).permit(:link)
  end
end
