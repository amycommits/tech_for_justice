class BaseWorkflowController < ApplicationController
	#declaring the controller objects
	#@user_info = new UserInformationsController
	#@doc = new DocumentsController

	#defining the variables from model
	@documents = Document.all
	def index
		@expungement_form = Document.where(name: 'Expungement Motion')
	end
	def new_user_info
		
	end
	def update_user_info

	end
end
