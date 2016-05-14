class DocumentUserCaseInfosController < ApplicationController
  before_action :set_document_user_case_info, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!


  # GET /document_user_case_infos
  # GET /document_user_case_infos.json
  def index
    @document_user_case_infos = DocumentUserCaseInfo.all
  end

  # GET /document_user_case_infos/1
  # GET /document_user_case_infos/1.json
  def show
  end

  # GET /document_user_case_infos/new
  def new
    @document_user_case_info = DocumentUserCaseInfo.new
  end

  # GET /document_user_case_infos/1/edit
  def edit
  end

  # POST /document_user_case_infos
  # POST /document_user_case_infos.json
  def create
    @document_user_case_info = DocumentUserCaseInfo.new(document_user_case_info_params)

    respond_to do |format|
      if @document_user_case_info.save
        format.html { redirect_to @document_user_case_info, notice: 'Document user case info was successfully created.' }
        format.json { render :show, status: :created, location: @document_user_case_info }
      else
        format.html { render :new }
        format.json { render json: @document_user_case_info.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /document_user_case_infos/1
  # PATCH/PUT /document_user_case_infos/1.json
  def update
    respond_to do |format|
      if @document_user_case_info.update(document_user_case_info_params)
        format.html { redirect_to @document_user_case_info, notice: 'Document user case info was successfully updated.' }
        format.json { render :show, status: :ok, location: @document_user_case_info }
      else
        format.html { render :edit }
        format.json { render json: @document_user_case_info.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /document_user_case_infos/1
  # DELETE /document_user_case_infos/1.json
  def destroy
    @document_user_case_info.destroy
    respond_to do |format|
      format.html { redirect_to document_user_case_infos_url, notice: 'Document user case info was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_document_user_case_info
      @document_user_case_info = DocumentUserCaseInfo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def document_user_case_info_params
      params.require(:document_user_case_info).permit(:user_document_id, :user_case_info_id)
    end
end
