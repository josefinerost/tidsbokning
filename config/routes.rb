Rails.application.routes.draw do
  resources :passwords, controller: "clearance/passwords", only: [:create, :new]
  resource :session, controller: "clearance/sessions", only: [:create]

  resources :users, controller: :users, only: [:create] do
    resource :password,
      controller: "clearance/passwords",
      only: [:create, :edit, :update]
  end

  get "/sign_in" => "clearance/sessions#new", as: "sign_in"
  delete "/sign_out" => "clearance/sessions#destroy", as: "sign_out"
  get(:sign_up, controller: :users, action: :new)
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get(:contact, controller: :static_pages, action: :contact)
  resources(:bookings, path: :bokningar)
  resources(:shifts, path: :pass, only: [:index, :new, :edit, :create, :update])
  root(controller: :static_pages, action: :home)
end
