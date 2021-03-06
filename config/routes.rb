Rails.application.routes.draw do

  resources :experiment_proposals do
    collection do
      get 'index'
      get 'show'
    end
  end


  resources :experiment_proposal_categories

  resources :reward_categories do
    collection do
      get 'index'
      get 'show'
    end
  end

  resources :experiment_actions

  resources :resource_reservations do
    collection do
      get 'index'
      get 'show'
    end
  end


  resources :reservations do
    collection do
      get 'index'
      get 'show'
    end
  end

  resources :providers do
    collection do
      get 'index'
      get 'show'
    end
  end


  resources :users do
    collection do
      get 'index'
      get 'show'
    end
  end


  resources :resources do
    collection do
      get 'index'
      get 'show'
      get 'get_resources_by_type'
    end
  end

  resources :resource_types do
    collection do
      get 'index'
      get 'show'
    end
  end

  resources :nodes do
    collection do
      get 'get_nodes_by_location'
      get 'nodes_by_provider'
      get 'index'
      get 'show'
    end
  end

  resources :function_sets

  resources :interfaces

  resources :data_types

  resources :experiments, :path => '/'

  resources :experiments do
    collection do
      get 'index'
      get 'show'
    #   get 'gettemperaturenodes'
    end
  end
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
