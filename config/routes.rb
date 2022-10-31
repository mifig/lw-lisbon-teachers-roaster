Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  get ":school_id/dashboard",to: "schools#dashboard", as: :dashboard

  get "/management", to: "teachers#management", as: :teachers_mgmt
  post ":school_id/teachers/update_roaster", to: "teachers#update_roaster", as: :update_roaster
  get ":school_id/teachers/export_roaster", to: "teachers#export_roaster", as: :export_roaster, defaults: { format: :csv }
  
  
  resources :schools, only: [:show]

  resources :teachers, only: [:new, :create, :edit, :update]
end
