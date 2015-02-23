Rails.application.routes.draw do

  get 'alerts/all'

  get 'feeds/new'

  resources :users


  #get "sessions",           to: "sessions#index", as: :sessions
  post "/sessions",          to: "sessions#create"
  get "sessions/new",       to: "sessions#new", as: :new_session
  get "/sessions/welcome",  to: "sessions#welcome", as: :welcome
  delete "/sessions/destroy", to: "sessions#destroy", as: :destroy_session

  get "accounts/new",       to: "accounts#new", as: :new_account
  post "/accounts",         to: "accounts#create",  as: :accounts
  get "accounts/:id",        to: "accounts#show",    as: :account

  post "/feeds/",            to: "feeds#create", as: :feeds
  get "/feeds/",              to: "feeds#watchlist", as: :watchlist

  get "/feeds/delete/:id", to: "feeds#delete", as: :delete_feed
  delete "/feeds/:id",      to: "feeds#destroy", as: :destroy

  get "/transactions/new/:id",   to: "transactions#new", as: :new_transaction
  post "/transactions",       to: "transactions#create", as: :transactions
  get "transaction/:id",      to: "transactions#show",    as: :transaction

  get "transactions/all/:id",    to: "transactions#all",     as: :transactions_all

  get "/transactions/sell/:id",   to: "transactions#sell", as: :sell
  patch "/transaction/:id",      to: "transactions#update",  as: :update

  get "/news",                  to: "news#show", as: :news

  get "/alerts",                to: "alerts#all", as: :all_alerts
  get "alerts/new" ,             to: "alerts#new",  as: :new_alert
  post "/alerts",             to: "alerts#create", as: :alerts


  root 'home#index'

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
