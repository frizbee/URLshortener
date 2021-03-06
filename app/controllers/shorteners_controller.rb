class ShortenersController < ApplicationController
  def index
    @shortener = Shortener.new
    @link = URI::join("http://"+request.host, params[:link]) if params[:link]
  end

  def create
    @shortener = Shortener.find_or_initialize_by(shortener_params)

    if @shortener.save
      redirect_to root_path(link: @shortener.code)
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
