Rails.application.routes.draw do
 # resources :document_user_case_infos
 # resources :document_user_informations

 # resources :base_workflow
  resources :user_documents
  resources :user_case_infos
  resources :documents
  resources :user_informations

  resources :document_user_case_infos
  resources :user_references
  resources :user_arguments  
  devise_for :users
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
   root 'base_workflow#index'

 
  resources :documents do
    resources :user_documents
  end
  
    resources :user_documents do
      resources :user_informations
      #resources :document_user_informations
      resources :user_case_infos
      resources :user_arguments
      resources :user_references
      resources :review
    end

  devise_scope :user do
    delete "/logout" => "devise/sessions#destroy"
  end
  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end
  
end
