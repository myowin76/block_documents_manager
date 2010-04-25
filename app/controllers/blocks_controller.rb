class BlocksController < ApplicationController
  def index
    @blocks = Block.all
    @categories = Category.all
  end
  
  def show
    @block = Block.find(params[:id])
  end
  
  def new
    @block = Block.new
	
  end
  
  def create
    @block = Block.new(params[:block])
    if @block.save
      flash[:notice] = "Successfully created block."
      redirect_to @block
    else
      render :action => 'new'
    end
  end
  
  def edit
    @block = Block.find(params[:id])
  end
  
  def update
    @block = Block.find(params[:id])
    if @block.update_attributes(params[:block])
      flash[:notice] = "Successfully updated block."
      redirect_to @block
    else
      render :action => 'edit'
    end
  end
  
  def destroy
    @block = Block.find(params[:id])
    @block.destroy
    flash[:notice] = "Successfully destroyed block."
    redirect_to blocks_url
  end
end
