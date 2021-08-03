class ListsController < ApplicationController
  def index
    @lists = List.all
  end

  def new
    @list = List.new
  end

  def create
    @list = List.new(list_params)
    @list.save!
    redirect_to root_path
  end

  def show
    @list = List.find(params[:id])
    @bookmark = Bookmark.new
    @review = Review.new
  end

  private

  def list_params
    params.require(:list).permit(:name, :background_image, :photo)
  end
end
