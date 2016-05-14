class UserCaseInfosController < ApplicationController
  before_action :set_user_case_info, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!

  # GET /user_case_infos
  # GET /user_case_infos.json
  def index
    @user_case_infos = UserCaseInfo.all
  end

  # GET /user_case_infos/1
  # GET /user_case_infos/1.json
  def show
  end

  # GET /user_case_infos/new
  def new
    @user_case_info = UserCaseInfo.new
  end

  # GET /user_case_infos/1/edit
  def edit
  end

  # POST /user_case_infos
  # POST /user_case_infos.json
  def create
    @user_case_info = UserCaseInfo.new(user_case_info_params)

    respond_to do |format|
      if @user_case_info.save
        format.html { redirect_to @user_case_info, notice: 'User case info was successfully created.' }
        format.json { render :show, status: :created, location: @user_case_info }
      else
        format.html { render :new }
        format.json { render json: @user_case_info.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /user_case_infos/1
  # PATCH/PUT /user_case_infos/1.json
  def update
    #@user_argument = UserArgument.where(:user_document_id [params[:user_document_id]])
    respond_to do |format|
      if @user_case_info.update(user_case_info_params)
              @argument = UserArgument.where(:user_document)
              @user_document = [params[:user_document_id]]
             format.html { redirect_to edit_user_document_user_argument_path(79,5) }
             format.json { render :show, status: :ok, location: @user_case_info }
      else
        format.html { render :edit }
        format.json { render json: @user_case_info.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /user_case_infos/1
  # DELETE /user_case_infos/1.json
  def destroy
    @user_case_info.destroy
    respond_to do |format|
      format.html { redirect_to user_case_infos_url, notice: 'User case info was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user_case_info
      @user_case_info = UserCaseInfo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_case_info_params
      params.require(:user_case_info).permit(:user_id, :docket_id, :charged_with, :charge_type, :police_description, :case_conclusion, :is_case_pending, :case_end_date, :document_id)
    end
end
