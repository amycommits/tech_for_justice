class UserArgumentsController < ApplicationController
  before_action :set_user_argument, only: [:show, :edit, :update, :destroy]

  # GET /user_arguments
  # GET /user_arguments.json
  def index
    #@existing_argument = UserArgument.where(user_id: current_user.id, document_id: 1) || nil
    @user_arguments = UserArgument.all
  end

  # GET /user_arguments/1
  # GET /user_arguments/1.json
  def show
  end

  # GET /user_arguments/new
  def new
    @user_argument = UserArgument.new
    @doc_id = [params[:document_id]]
  end

  # GET /user_arguments/1/edit
  def edit
  end

  # POST /user_arguments
  # POST /user_arguments.json
  def create
    @user_argument = UserArgument.new(user_argument_params)

    respond_to do |format|
      if @user_argument.save
        format.html { redirect_to @user_argument, notice: 'User argument was successfully created.' }
        format.json { render :show, status: :created, location: @user_argument }
      else
        format.html { render :new }
        format.json { render json: @user_argument.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /user_arguments/1
  # PATCH/PUT /user_arguments/1.json
  def update
    respond_to do |format|
      if @user_argument.update(user_argument_params)
        format.html { redirect_to @user_argument, notice: 'User argument was successfully updated.' }
        format.json { render :show, status: :ok, location: @user_argument }
      else
        format.html { render :edit }
        format.json { render json: @user_argument.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /user_arguments/1
  # DELETE /user_arguments/1.json
  def destroy
    @user_argument.destroy
    respond_to do |format|
      format.html { redirect_to user_arguments_url, notice: 'User argument was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def existing_argument
    @existing_argument = UserArgument.where(user_id: current_user.id, document_id: 1)
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user_argument
      @user_argument = UserArgument.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_argument_params
      params.require(:user_argument).permit(:document_id, :overall_reason, :user_change_details,:user_id)
    end
end
