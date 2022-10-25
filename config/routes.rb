Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"

  resources :teachers, except: [:index, :show]
  get "/teachers", to: "teachers#management", as: :teachers_mgmt
  post "/teachers/update_roaster", to: "teachers#update_roaster", as: :update_roaster
  get "/teachers/export_roaster", to: "teachers#export_roaster", as: :export_roaster, defaults: { format: :csv }
end
