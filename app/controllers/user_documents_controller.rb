class UserDocumentsController < ApplicationController
  before_action :set_user_document, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!
  layout "form_layout", except: :index
  
  # GET /user_documents
  # GET /user_documents.json
  def index
    @user_documents = UserDocument.all
    @documents = Document.all
  end
  def final_review
     @user_document = UserDocument.find(params[:user_document_id]) 
     @doc_user_info = @user_document.user_informations

     respond_to do |format|
      format.html
      format.pdf do
        pdf = Prawn::Document.new
        pdf.text "Hello World"
        send_data pdf.render
      end
    end
  end

  # GET /user_documents/1
  # GET /user_documents/1.json
  def show
    #Prawn for PDF
    respond_to do |format|
      format.html
      format.pdf do
        pdf = Prawn::Document.new
        pdf.text "Hello World"
        send_data pdf.render
      end
    end
  end

  # GET /user_documents/new
  def new
      @user_document = current_user.user_documents.build
      @user_info_id = current_user.user_information
  end

  # GET /user_documents/1/edit
  def edit
    @doc_id = UserDocument.where(user_id: current_user.id).last
  end

  # POST /user_documents
  # POST /user_documents.json
  def create
    @user_document = current_user.user_documents.build(user_document_params)
    @user_info = current_user.user_information

   if @user_document.save
      if !@user_info.nil?
        redirect_to edit_user_document_user_information_path(@user_document.id, @user_info)
      else
        redirect_to new_user_document_user_information_path(@user_document.id)
      end
    else
      redirect_to 'new'
    end
    #redirect to user information
  end

  # PATCH/PUT /user_documents/1
  # PATCH/PUT /user_documents/1.json
  def update
    @user_information_info = UserInformation.where(user_id: current_user.id)


      @user_info = current_user.user_information
       if @user_document.save
        if !@user_info.nil?
          redirect_to edit_user_document_user_information_path(@user_document.id, @user_info)
        else
          redirect_to new_user_document_user_information_path(@user_document.id)
        end
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
