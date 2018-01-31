Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get(:contact, controller: :static_pages, action: :contact)
  resources(:bookings, path: :bokningar)
  resources(:shifts, path: :pass, only: [:index, :new, :edit, :create, :update])
  root(controller: :static_pages, action: :home)
end
