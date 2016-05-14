class UserInformationsController < ApplicationController
  before_action :set_user_information, only: [:show, :edit, :update, :destroy]

  # GET /user_informations
  # GET /user_informations.json
  def index
    @user_informations = UserInformation.all
  end

  # GET /user_informations/1
  # GET /user_informations/1.json
  def show
  end

  # GET /user_informations/new
  def new
    @user_information = UserInformation.new
  end

  # GET /user_informations/1/edit
  def edit
  end

  # POST /user_informations
  # POST /user_informations.json
  def create
    @user_information = UserInformation.new(user_information_params)

    respond_to do |format|
      if @user_information.save
        if params[:document_id].present? 
          format.html { redirect_to user_document_user_case_infos_path(params[:document_id]) }
          format.json { render :show, status: :created, location: @user_information }

        else
          format.html { redirect_to @user_information, notice: 'User information was successfully created.' }
          format.json { render :show, status: :created, location: @user_information }
        end
      else
        format.html { render :new }
        format.json { render json: @user_information.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /user_informations/1
  # PATCH/PUT /user_informations/1.json
  def update
    respond_to do |format|
      if @user_information.update(user_information_params)
        format.html { redirect_to @user_information, notice: 'User information was successfully updated.' }
        format.json { render :show, status: :ok, location: @user_information }
      else
        format.html { render :edit }
        format.json { render json: @user_information.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /user_informations/1
  # DELETE /user_informations/1.json
  def destroy
    @user_information.destroy
    respond_to do |format|
      format.html { redirect_to user_informations_url, notice: 'User information was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user_information
      @user_information = UserInformation.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_information_params
      params.require(:user_information).permit(:user_id, :pd_id, :first_name, :last_name, :middle_name, :preefix_suffix, :title, :address_line_1, :address_line2, :city, :state, :phone_number)
    end
end
