Rails.application.routes.draw do

  root 'public_pages#home'

  resources :patients

  match '/home', to: 'public_pages#home', via: 'get'
  match '/services', to: 'public_pages#services', via: 'get'
  match '/location', to: 'public_pages#location', via: 'get'

  match 'patient_record', to: 'patients#new', via: 'get'
  match 'patient_infos', to: 'patients#patient_info', via: 'post'
  match 'dental_insurances', to: 'patients#dental_insurance', via: 'post'
  match 'dental_histories', to: 'patients#dental_history', via: 'post'

  match 'lvd_employee_area77', to: 'private_pages#lakeview_emp_area77', via: 'get'
  match 'lvd_employee_area88', to: 'private_pages#lakeview_emp_area88', via: 'get'
  
  get 'lvd_emp_loggin' => 'lvd_priv_sessions#new'
  post 'lvd_emp_loggin' => 'lvd_priv_sessions#create'
  delete 'lvd_emp_logout' => 'lvd_priv_sessions#destroy'

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

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
