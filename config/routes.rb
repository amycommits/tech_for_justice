Rails.application.routes.draw do
  resources :prototypes
  # resources :document_user_case_infos
  # resources :document_user_informations

  # resources :base_workflow
  resources :user_case_infos
  resources :documents
  resources :user_informations

  resources :document_user_case_infos
  resources :user_references
  resources :user_arguments

  devise_for :users, controllers: { omniauth_callbacks: 'callbacks' }

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
    get '/users/sign_out' => 'devise/sessions#destroy'
  end
  get 'about', to: 'application#about'
  get 'contact', to: 'application#contact'

  get 'mock/personal_info', to: 'prototypes#personal_info'
  get 'mock/homepage', to: 'prototypes#homepage'
  get 'mock/documents', to: 'prototypes#documents'


  #For pdf testing
  get 'documents', to: 'documents#index'

end
