class BlockDocumentsController < ApplicationController
  def index
    
	@block = Block.find(params[:block_id])
    @block_documents = @block.block_documents.all
  end
  
  def show
    @block = Block.find(params[:block_id])
    @block_document = @block.block_documents.find(params[:id])
  end
  
  def new
    @block = Block.find(params[:block_id])
    @block_document = @block.block_documents.build
    @block_document.category_id = params[:category_id]
  end
  
  def create
    @block = Block.find(params[:block_id])
    @block_document = @block.block_documents.build(params[:block_document])
    if @block_document.save
      flash[:notice] = "Successfully created block document."
      redirect_to blocks_path
    else
      render :action => 'new'
    end
  end
  
  def edit
    @block = Block.find(params[:block_id])
    @block_document = @block.block_documents.find(params[:id])
  end
  
  def update
    @block = Block.find(params[:block_id])
    @block_document = @block.block_documents.find(params[:id])
    if @block_document.update_attributes(params[:block_document])
      flash[:notice] = "Successfully updated block document."
      redirect_to blocks_path
    else
      render :action => 'edit'
    end
  end
  
  def destroy
    @block = Block.find(params[:block_id])
    @block_document = @block.block_documents.find(params[:id])
    @block_document.destroy
    flash[:notice] = "Successfully destroyed block document."
    redirect_to blocks_path
  end
end
