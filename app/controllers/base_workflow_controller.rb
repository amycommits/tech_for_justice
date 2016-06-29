class BaseWorkflowController < ApplicationController
	#declaring the controller objects
	#@user_info = new UserInformationsController
	#@doc = new DocumentsController

	#defining the variables from model

	before_action :authenticate_user!

	@documents = Document.all
	@user_documents = UserDocument.all
	def index
		@expungement_form = Document.where(name: 'Expungement Motion')

	end
	def new_user_info
		
	end
	def update_user_info

	end


end
