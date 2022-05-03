class ListsController < ApplicationController
  def index
    @lists = List.all
  end

  def show
    set_list
  end

  def new
    @list = List.new
  end

  def create
    @list = List.new(list_params)
    if @list.save
      redirect_to list_path(@list)
    else
      render :new
    end
  end

  # def destroy
  #   @list = List.find(list_params)
  #   @list.destroy
  #   redirect_to lists_path(@list)
  # end

  def set_list
    @list = List.find(params[:id])
  end

  def list_params
    params.require(:list).permit(:name)
  end
end
