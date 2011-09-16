Resume::Application.routes.draw do
  resources :cvs do
      resources :jobs
      resources :skills
      resources :softwares
      resources :years
      resources :disciplines
      resources :highlights
      resources :job_skills
      resources :job_softwares
      resources :job_years
  end

  resources :users do
      resources :cvs do
          resources :jobs
          resources :skills
          resources :softwares
          resources :years
          resources :disciplines
          resources :highlights 
          resources :job_skills
          resources :job_softwares
          resources :job_years
      end
  end

  resources :highlights

  resources :job_years

  resources :job_softwares

  resources :job_skills
  
  resources :disciplines do
      resources :skills
  end

  resources :years do
      resources :jobs
      resources :skills
      
      resources :job_years
  end

  resources :softwares do
      resources :jobs

      resources :job_softwares
  end

  resources :skills do
      resources :jobs
      resources :years

      resources :job_skills
  end

  resources :jobs do
      resources :years
      resources :softwares
      resources :skills
      resources :disciplines

      resources :job_years
      resources :job_skills
      resources :job_softwares
  end

  resources :home

  root :to => 'home#index', :as => :homepage

  resources :users, :user_sessions
  match 'login' => 'user_sessions#new', :as => :login
  match 'logout' => 'user_sessions#destroy', :as => :logout

#  match '/years/:id/jobs', :to => 'jobs#index'
#  match '/years/:id/skills', :to => 'skills#index'
#  match '/softwares/:id/jobs', :to => 'jobs/#index'
#  match '/skills/:id/jobs', :to => 'jobs/#index'
#  match '/skills/:id/years', :to => 'years/#index'
#  match '/jobs/:id/skills', :to => 'skills/#index'
#  match '/jobs/:id/softwares', :to => 'softwares/#index'
#  match '/jobs/:id/years', :to => 'years/#index'


  # The priority is based upon order of creation:
  # first created -> highest priority.

  # Sample of regular route:
  #   match 'products/:id' => 'catalog#view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   match 'products/:id/purchase' => 'catalog#purchase', :as => :purchase
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Sample resource route with options:
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

  # Sample resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Sample resource route with more complex sub-resources
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', :on => :collection
  #     end
  #   end

  # Sample resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end

  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.
  # root :to => "welcome#index"

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id(.:format)))'
end
