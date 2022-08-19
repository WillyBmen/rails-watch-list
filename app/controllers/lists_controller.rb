class ListsController < ApplicationController
  def index
    @lists = List.all
  end

  def show
    @list = List.find(params[:id])
  end

  def create
    @lists = List.new(list_params)
    @lists.save
    redirect_to lists_path(@lists)
  end

  def new
    @list = List.new
  end

  private

  def list_params
    params.require(:list).permit(:name, :photo)
  end
end
