class UserDocumentsController < ApplicationController
  before_action :set_user_document, only: [:show, :edit, :update, :destroy]

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
  end

  # GET /user_documents/1/edit
  def edit
  end

  # POST /user_documents
  # POST /user_documents.json
  def create
    @user_document = UserDocument.new(user_document_params)

    respond_to do |format|
      if @user_document.save
        format.html { redirect_to @user_document, notice: 'User document was successfully created.' }
        format.json { render :show, status: :created, location: @user_document }
      else
        format.html { render :new }
        format.json { render json: @user_document.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /user_documents/1
  # PATCH/PUT /user_documents/1.json
  def update
    respond_to do |format|
      if @user_document.update(user_document_params)
        format.html { redirect_to @user_document, notice: 'User document was successfully updated.' }
        format.json { render :show, status: :ok, location: @user_document }
      else
        format.html { render :edit }
        format.json { render json: @user_document.errors, status: :unprocessable_entity }
      end
    end
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
