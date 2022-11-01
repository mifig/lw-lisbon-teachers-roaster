Rails.application.routes.draw do
  devise_for :users
  
  root to: "pages#home"

  get "/dashboard/:school_id",to: "schools#dashboard", as: :dashboard
  
  get "/management", to: "pages#management", as: :teachers_mgmt
  get "/management/:school_id", to: "schools#management", as: :school_mgmt

  post "/teachers/:school_id/update_roaster", to: "teachers#update_roaster", as: :update_roaster
  get "/teachers/:school_id/export_roaster", to: "teachers#export_roaster", as: :export_roaster, defaults: { format: :csv }
  
  resources :schools, only: [:show]

  get "/teachers/:school_id/new", to: "teachers#new", as: :new_teacher

  resources :teachers, only: [:create, :edit, :update, :destroy]
end
