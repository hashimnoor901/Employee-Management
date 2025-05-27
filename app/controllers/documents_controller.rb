class DocumentsController < ApplicationController
  before_action :set_document, only: [:edit, :update, :show, :destroy]
  def index
    @documents = Document.all
  end  
  def new
    @document = Document.new
  end  
  def create
    @document = Document.new(document_params)
      if @document.save
        redirect_to documents_path
      else 
        render :new  
      end  
  end  
  def edit
  end  
  def destroy
    if @document.destroy
      redirect_to documents_path,notice:"Document deleted successfully"
    else
      redirect_to documents_path,alert:"Document could not be deleted"
    end
  end  
  def update
    if @document.update(document_params)
      redirect_to documents_path , notice:"Document updated successfully"
    else
      render :edit  
    end
  end 
  def show
  end    
  private
  def document_params
    params.require(:employee).permit(:name,:doc_type,:employee_id)
  end  
  def set_document
    @employee = Document.find(params[:id])
  rescue ActiveRecord::RecordNotFound =>error
    redirect_to documents_path, notice:error  
  end  
end  