class BanananaController < ApplicationController


  def index
  	@banananas = Bananana.search(params[:search])
  	
  end

  def new
    @bananana = Bananana.new
  end

  def create
    @bananana = Bananana.new(subject_params) 

    if @bananana.save
      redirect_to(:action => 'index')
    else
      render('new')
    end 
  end

  def delete
  end


def show
    @bananana = Bananana.find(params[:id])
  end

  private

  def subject_params
    params.require(:bananana).permit(:name, :position, :visible)
  end
end