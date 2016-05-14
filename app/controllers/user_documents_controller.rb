class UserDocumentsController < ApplicationController
  before_action :set_user_document, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!

  # GET /user_documents
  # GET /user_documents.json
  def index
    @user_documents = UserDocument.all
  end

  # GET /user_documents/1
  # GET /user_documents/1.json
  def show
  end

  # GET /user_documents/new
  def new
    @user_document = UserDocument.new
    @doc_id = [params[:document_id]]
  end

  # GET /user_documents/1/edit
  def edit
    @doc_id = UserDocument.where(user_id: current_user.id).last
  end

  # POST /user_documents
  # POST /user_documents.json
  def create
    @user_document = UserDocument.new(user_document_params)
    @user_information_info = UserInformation.where(user_id: current_user.id)
   if @user_document.save
      redirect_to edit_user_document_user_case_info_path(@user_doc_id, current_user.id)
    else
      redirect_to 'new'
    end
    #redirect to user information
     end

  # PATCH/PUT /user_documents/1
  # PATCH/PUT /user_documents/1.json
  def update
    @user_information_info = UserInformation.where(user_id: current_user.id)
   
    respond_to do |format|
        format.html { redirect_to edit_user_document_user_case_info_path(@user_document.id, current_user.id) }
        format.json { render :show, status: :ok, location: @user_document || 0 }
     
      end
  end

  def go_to_user_info
    @user_information = UserInformation.new
  end
  def go_to_user_case_info
    @user_case_info = UserCaseInfo.new
  end

  # DELETE /user_documents/1
  # DELETE /user_documents/1.json
  def destroy
    @user_document.destroy
    respond_to do |format|
      format.html { redirect_to user_documents_url, notice: 'User document was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user_document
      @user_document = UserDocument.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_document_params
      params.require(:user_document).permit(:user_id, :document_id)
    end
end
