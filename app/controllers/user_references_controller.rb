class UserReferencesController < ApplicationController
  before_action :set_user_reference, only: [:show, :edit, :update, :destroy]

  # GET /user_references
  # GET /user_references.json
  def index
    @user_references = UserReference.all
  end

  # GET /user_references/1
  # GET /user_references/1.json
  def show
  end

  # GET /user_references/new
  def new
    @user_reference = UserReference.new
  end

  # GET /user_references/1/edit
  def edit
  end

  # POST /user_references
  # POST /user_references.json
  def create
    @user_reference = UserReference.new(user_reference_params)

    respond_to do |format|
      if @user_reference.save
        format.html { redirect_to @user_reference, notice: 'User reference was successfully created.' }
        format.json { render :show, status: :created, location: @user_reference }
      else
        format.html { render :new }
        format.json { render json: @user_reference.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /user_references/1
  # PATCH/PUT /user_references/1.json
  def update
    respond_to do |format|
      if @user_reference.update(user_reference_params)
        format.html { redirect_to @user_reference, notice: 'User reference was successfully updated.' }
        format.json { render :show, status: :ok, location: @user_reference }
      else
        format.html { render :edit }
        format.json { render json: @user_reference.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /user_references/1
  # DELETE /user_references/1.json
  def destroy
    @user_reference.destroy
    respond_to do |format|
      format.html { redirect_to user_references_url, notice: 'User reference was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user_reference
      @user_reference = UserReference.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_reference_params
      params.require(:user_reference).permit(:document, :attachment)
    end
end
