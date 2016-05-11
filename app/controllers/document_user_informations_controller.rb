class DocumentUserInformationsController < ApplicationController
	after_initialize :create_information 

	 @doc_id = [params[:document_id]]

	 def new

	 end
	 def create
    	@document_user_information = UserDocument.new(document_user_information_params)
	 end


	 def user_document_params
      document_user_information_params.require(:user_document).permit(:user_id, :document_id)
    end

end
