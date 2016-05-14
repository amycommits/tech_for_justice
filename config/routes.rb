Rails.application.routes.draw do
 # resources :document_user_case_infos
 # resources :document_user_informations
  resources :user_references
  resources :user_arguments
  resources :user_case_infos
  resources :base_workflow
 # resources :user_documents
  resources :documents
  resources :user_informations
  devise_for :users
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
   root 'base_workflow#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end
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
  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
